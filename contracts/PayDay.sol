// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title PayDay - tokenized invoice factoring for SMEs on Avalanche
/// @notice An SME issues an invoice, the client confirms the debt on-chain,
///         an investor buys it at a discount, and the client's payment goes
///         automatically to whoever holds the invoice on the due date.
contract PayDay {
    enum Status { Created, Confirmed, Listed, Sold, Paid }

    struct Invoice {
        address issuer;   // the SME that delivered goods / services
        address client;   // the debtor who owes the money
        address holder;   // whoever currently owns the right to be paid
        uint256 amount;   // face value (wei)
        uint256 price;    // current sale price when listed (wei)
        uint64 dueDate;   // unix timestamp
        uint64 paidAt;    // unix timestamp, 0 until paid
        bytes32 docHash;  // keccak256 of the legal invoice reference / document
        string ref;       // human-readable invoice reference
        Status status;
    }

    uint256 public count;
    mapping(uint256 => Invoice) private invoices;

    // Public, permanent payment reputation of every client
    mapping(address => uint256) public paidOnTime;
    mapping(address => uint256) public paidLate;

    event InvoiceCreated(uint256 indexed id, address indexed issuer, address indexed client, uint256 amount, uint64 dueDate);
    event InvoiceConfirmed(uint256 indexed id, address indexed client);
    event InvoiceListed(uint256 indexed id, address indexed seller, uint256 price);
    event InvoiceSold(uint256 indexed id, address indexed from, address indexed to, uint256 price);
    event InvoicePaid(uint256 indexed id, address indexed holder, uint256 amount, bool late);

    function createInvoice(address client, uint256 amount, uint64 dueDate, string calldata ref)
        external
        returns (uint256 id)
    {
        require(client != address(0) && client != msg.sender, "Invalid client address");
        require(amount > 0, "Amount must be greater than 0");
        require(dueDate > block.timestamp, "Due date must be in the future");

        id = ++count;
        invoices[id] = Invoice({
            issuer: msg.sender,
            client: client,
            holder: msg.sender,
            amount: amount,
            price: 0,
            dueDate: dueDate,
            paidAt: 0,
            docHash: keccak256(bytes(ref)),
            ref: ref,
            status: Status.Created
        });
        emit InvoiceCreated(id, msg.sender, client, amount, dueDate);
    }

    /// @notice The debtor acknowledges the debt. This is what kills fake invoices.
    function confirmInvoice(uint256 id) external {
        Invoice storage inv = _get(id);
        require(msg.sender == inv.client, "Only the client can confirm this invoice");
        require(inv.status == Status.Created, "Invoice already confirmed");
        inv.status = Status.Confirmed;
        emit InvoiceConfirmed(id, msg.sender);
    }

    /// @notice The current holder offers the invoice for sale (first sale or resale).
    function listForSale(uint256 id, uint256 price) external {
        Invoice storage inv = _get(id);
        require(msg.sender == inv.holder, "Not the holder - this invoice was already sold");
        require(inv.status == Status.Confirmed || inv.status == Status.Sold, "Invoice must be confirmed by the client first");
        require(price > 0 && price <= inv.amount, "Price must be between 0 and the face value");
        inv.price = price;
        inv.status = Status.Listed;
        emit InvoiceListed(id, msg.sender, price);
    }

    /// @notice Atomic swap: the investor's money goes to the seller and ownership
    ///         moves to the investor in the same transaction.
    function buyInvoice(uint256 id) external payable {
        Invoice storage inv = _get(id);
        require(inv.status == Status.Listed, "Invoice is not for sale");
        require(msg.sender != inv.holder, "You already hold this invoice");
        require(msg.sender != inv.client, "The client cannot buy its own debt");
        require(msg.value == inv.price, "Send exactly the listed price");

        address seller = inv.holder;
        inv.holder = msg.sender;
        inv.status = Status.Sold;
        emit InvoiceSold(id, seller, msg.sender, msg.value);
        _send(seller, msg.value);
    }

    /// @notice The client pays the face value; it goes straight to the current holder.
    function payInvoice(uint256 id) external payable {
        Invoice storage inv = _get(id);
        require(msg.sender == inv.client, "Only the client can pay this invoice");
        require(
            inv.status == Status.Confirmed || inv.status == Status.Listed || inv.status == Status.Sold,
            "Invoice is not payable"
        );
        require(msg.value == inv.amount, "Send exactly the invoice amount");

        bool late = block.timestamp > inv.dueDate;
        inv.status = Status.Paid;
        inv.paidAt = uint64(block.timestamp);
        inv.price = 0;
        if (late) paidLate[inv.client]++;
        else paidOnTime[inv.client]++;

        emit InvoicePaid(id, inv.holder, msg.value, late);
        _send(inv.holder, msg.value);
    }

    function getInvoice(uint256 id) external view returns (Invoice memory) {
        return _get(id);
    }

    function isOverdue(uint256 id) external view returns (bool) {
        Invoice storage inv = _get(id);
        return inv.status != Status.Paid && block.timestamp > inv.dueDate;
    }

    function _get(uint256 id) private view returns (Invoice storage inv) {
        require(id > 0 && id <= count, "Invoice does not exist");
        inv = invoices[id];
    }

    function _send(address to, uint256 value) private {
        (bool ok, ) = payable(to).call{value: value}("");
        require(ok, "Transfer failed");
    }
}
