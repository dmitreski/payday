// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Test} from "forge-std/Test.sol";
import {PayDay} from "../contracts/PayDay.sol";

/// @dev A wallet that refuses incoming AVAX, used to show the push-payment risk.
contract RejectsPayments {
    function list(PayDay pay, uint256 id, uint256 price) external { pay.listForSale(id, price); }
    function buy(PayDay pay, uint256 id) external payable { pay.buyInvoice{value: msg.value}(id); }
    receive() external payable { revert("no thanks"); }
}

contract PayDayTest is Test {
    PayDay pay;

    address bakery = makeAddr("bakery");
    address market = makeAddr("market");
    address investor = makeAddr("investor");
    address investor2 = makeAddr("investor2");
    address stranger = makeAddr("stranger");

    uint256 constant AMOUNT = 1 ether;
    uint256 constant PRICE = 0.97 ether;
    string constant REF = "INV-2026-001 Bread supply";
    uint64 due;

    function setUp() public {
        pay = new PayDay();
        due = uint64(block.timestamp + 90 days);
        vm.deal(bakery, 10 ether);
        vm.deal(market, 10 ether);
        vm.deal(investor, 10 ether);
        vm.deal(investor2, 10 ether);
        vm.deal(stranger, 10 ether);
    }

    // ---------- helpers: walk an invoice through the flow ----------

    function _create() internal returns (uint256 id) {
        vm.prank(bakery);
        id = pay.createInvoice(market, AMOUNT, due, REF);
    }

    function _confirmed() internal returns (uint256 id) {
        id = _create();
        vm.prank(market);
        pay.confirmInvoice(id);
    }

    function _listed() internal returns (uint256 id) {
        id = _confirmed();
        vm.prank(bakery);
        pay.listForSale(id, PRICE);
    }

    function _sold() internal returns (uint256 id) {
        id = _listed();
        vm.prank(investor);
        pay.buyInvoice{value: PRICE}(id);
    }

    function _status(uint256 id) internal view returns (PayDay.Status) {
        return pay.getInvoice(id).status;
    }

    // ---------- createInvoice ----------

    function test_Create_StoresAllFields() public {
        vm.expectEmit(address(pay));
        emit PayDay.InvoiceCreated(1, bakery, market, AMOUNT, due);
        uint256 id = _create();

        PayDay.Invoice memory inv = pay.getInvoice(id);
        assertEq(id, 1);
        assertEq(pay.count(), 1);
        assertEq(inv.issuer, bakery);
        assertEq(inv.client, market);
        assertEq(inv.holder, bakery, "issuer holds the invoice at first");
        assertEq(inv.amount, AMOUNT);
        assertEq(inv.price, 0);
        assertEq(inv.dueDate, due);
        assertEq(inv.paidAt, 0);
        assertEq(inv.docHash, keccak256(bytes(REF)), "document fingerprint");
        assertEq(inv.ref, REF);
        assertEq(uint8(inv.status), uint8(PayDay.Status.Created));
    }

    function test_Create_IdsIncrement() public {
        assertEq(_create(), 1);
        assertEq(_create(), 2);
        assertEq(pay.count(), 2);
    }

    function test_RevertWhen_CreateWithZeroClient() public {
        vm.prank(bakery);
        vm.expectRevert("Invalid client address");
        pay.createInvoice(address(0), AMOUNT, due, REF);
    }

    function test_RevertWhen_CreateInvoiceToSelf() public {
        vm.prank(bakery);
        vm.expectRevert("Invalid client address");
        pay.createInvoice(bakery, AMOUNT, due, REF);
    }

    function test_RevertWhen_CreateWithZeroAmount() public {
        vm.prank(bakery);
        vm.expectRevert("Amount must be greater than 0");
        pay.createInvoice(market, 0, due, REF);
    }

    function test_RevertWhen_CreateWithDueDateNotInFuture() public {
        vm.startPrank(bakery);
        vm.expectRevert("Due date must be in the future");
        pay.createInvoice(market, AMOUNT, uint64(block.timestamp), REF);
        vm.expectRevert("Due date must be in the future");
        pay.createInvoice(market, AMOUNT, uint64(block.timestamp - 1), REF);
        vm.stopPrank();
    }

    // ---------- confirmInvoice ----------

    function test_Confirm_ByClient() public {
        uint256 id = _create();
        vm.expectEmit(address(pay));
        emit PayDay.InvoiceConfirmed(id, market);
        vm.prank(market);
        pay.confirmInvoice(id);
        assertEq(uint8(_status(id)), uint8(PayDay.Status.Confirmed));
    }

    function test_RevertWhen_IssuerConfirmsOwnInvoice() public {
        uint256 id = _create();
        vm.prank(bakery);
        vm.expectRevert("Only the client can confirm this invoice");
        pay.confirmInvoice(id);
    }

    function test_RevertWhen_StrangerConfirms() public {
        uint256 id = _create();
        vm.prank(stranger);
        vm.expectRevert("Only the client can confirm this invoice");
        pay.confirmInvoice(id);
    }

    function test_RevertWhen_ConfirmTwice() public {
        uint256 id = _confirmed();
        vm.prank(market);
        vm.expectRevert("Invoice already confirmed");
        pay.confirmInvoice(id);
    }

    // ---------- listForSale ----------

    function test_List_SetsPriceAndStatus() public {
        uint256 id = _confirmed();
        vm.expectEmit(address(pay));
        emit PayDay.InvoiceListed(id, bakery, PRICE);
        vm.prank(bakery);
        pay.listForSale(id, PRICE);

        PayDay.Invoice memory inv = pay.getInvoice(id);
        assertEq(inv.price, PRICE);
        assertEq(uint8(inv.status), uint8(PayDay.Status.Listed));
    }

    function test_RevertWhen_ListBeforeClientConfirms() public {
        uint256 id = _create();
        vm.prank(bakery);
        vm.expectRevert("Invoice must be confirmed by the client first");
        pay.listForSale(id, PRICE);
    }

    function test_RevertWhen_StrangerLists() public {
        uint256 id = _confirmed();
        vm.prank(stranger);
        vm.expectRevert("Not the holder - this invoice was already sold");
        pay.listForSale(id, PRICE);
    }

    function test_RevertWhen_ListPriceZero() public {
        uint256 id = _confirmed();
        vm.prank(bakery);
        vm.expectRevert("Price must be between 0 and the face value");
        pay.listForSale(id, 0);
    }

    function test_RevertWhen_ListPriceAboveFaceValue() public {
        uint256 id = _confirmed();
        vm.prank(bakery);
        vm.expectRevert("Price must be between 0 and the face value");
        pay.listForSale(id, AMOUNT + 1);
    }

    function test_List_AtFaceValueAllowed() public {
        uint256 id = _confirmed();
        vm.prank(bakery);
        pay.listForSale(id, AMOUNT);
        assertEq(pay.getInvoice(id).price, AMOUNT);
    }

    function test_List_RepriceWhileListed_Reverts() public {
        // A listed invoice can't be re-listed at a new price (no cancel/reprice yet).
        uint256 id = _listed();
        vm.prank(bakery);
        vm.expectRevert("Invoice must be confirmed by the client first");
        pay.listForSale(id, 0.9 ether);
    }

    // ---------- buyInvoice: the atomic swap ----------

    function test_Buy_MovesMoneyAndOwnershipTogether() public {
        uint256 id = _listed();
        uint256 bakeryBefore = bakery.balance;
        uint256 investorBefore = investor.balance;

        vm.expectEmit(address(pay));
        emit PayDay.InvoiceSold(id, bakery, investor, PRICE);
        vm.prank(investor);
        pay.buyInvoice{value: PRICE}(id);

        assertEq(bakery.balance, bakeryBefore + PRICE, "bakery is paid instantly");
        assertEq(investor.balance, investorBefore - PRICE);
        assertEq(pay.getInvoice(id).holder, investor, "investor now owns the invoice");
        assertEq(uint8(_status(id)), uint8(PayDay.Status.Sold));
        assertEq(address(pay).balance, 0, "contract never keeps the money");
    }

    function test_RevertWhen_BuyUnlistedInvoice() public {
        uint256 id = _confirmed();
        vm.prank(investor);
        vm.expectRevert("Invoice is not for sale");
        pay.buyInvoice{value: PRICE}(id);
    }

    function test_RevertWhen_BuyWithTooLittle() public {
        uint256 id = _listed();
        vm.prank(investor);
        vm.expectRevert("Send exactly the listed price");
        pay.buyInvoice{value: PRICE - 1}(id);
    }

    function test_RevertWhen_BuyWithTooMuch() public {
        uint256 id = _listed();
        vm.prank(investor);
        vm.expectRevert("Send exactly the listed price");
        pay.buyInvoice{value: PRICE + 1}(id);
    }

    function test_RevertWhen_ClientBuysOwnDebt() public {
        uint256 id = _listed();
        vm.prank(market);
        vm.expectRevert("The client cannot buy its own debt");
        pay.buyInvoice{value: PRICE}(id);
    }

    function test_RevertWhen_HolderBuysOwnInvoice() public {
        uint256 id = _listed();
        vm.prank(bakery);
        vm.expectRevert("You already hold this invoice");
        pay.buyInvoice{value: PRICE}(id);
    }

    // ---------- double-sale fraud ----------

    function test_Fraud_IssuerCannotSellAgainAfterSale() public {
        uint256 id = _sold();
        vm.prank(bakery);
        vm.expectRevert("Not the holder - this invoice was already sold");
        pay.listForSale(id, PRICE);
    }

    function test_Fraud_SecondBuyerCannotBuySoldInvoice() public {
        uint256 id = _sold();
        vm.prank(investor2);
        vm.expectRevert("Invoice is not for sale");
        pay.buyInvoice{value: PRICE}(id);
    }

    // ---------- resale (secondary market) ----------

    function test_Resale_InvestorSellsOn_NewHolderGetsPaid() public {
        uint256 id = _sold();

        vm.prank(investor);
        pay.listForSale(id, 0.98 ether);
        uint256 investorBefore = investor.balance;
        vm.prank(investor2);
        pay.buyInvoice{value: 0.98 ether}(id);
        assertEq(investor.balance, investorBefore + 0.98 ether);
        assertEq(pay.getInvoice(id).holder, investor2);

        uint256 investor2Before = investor2.balance;
        vm.prank(market);
        pay.payInvoice{value: AMOUNT}(id);
        assertEq(investor2.balance, investor2Before + AMOUNT, "payment goes to the current holder");
    }

    // ---------- payInvoice ----------

    function test_Pay_OnTime_GoesToHolder() public {
        uint256 id = _sold();
        vm.warp(due); // paying exactly on the due date counts as on time
        uint256 investorBefore = investor.balance;

        vm.expectEmit(address(pay));
        emit PayDay.InvoicePaid(id, investor, AMOUNT, false);
        vm.prank(market);
        pay.payInvoice{value: AMOUNT}(id);

        PayDay.Invoice memory inv = pay.getInvoice(id);
        assertEq(investor.balance, investorBefore + AMOUNT);
        assertEq(uint8(inv.status), uint8(PayDay.Status.Paid));
        assertEq(inv.paidAt, due);
        assertEq(pay.paidOnTime(market), 1);
        assertEq(pay.paidLate(market), 0);
        assertEq(address(pay).balance, 0);
    }

    function test_Pay_Late_RecordedAsLate() public {
        uint256 id = _sold();
        vm.warp(uint256(due) + 1);

        vm.expectEmit(address(pay));
        emit PayDay.InvoicePaid(id, investor, AMOUNT, true);
        vm.prank(market);
        pay.payInvoice{value: AMOUNT}(id);

        assertEq(pay.paidOnTime(market), 0);
        assertEq(pay.paidLate(market), 1);
    }

    function test_Pay_BeforeAnySale_GoesToIssuer() public {
        uint256 id = _confirmed();
        uint256 bakeryBefore = bakery.balance;
        vm.prank(market);
        pay.payInvoice{value: AMOUNT}(id);
        assertEq(bakery.balance, bakeryBefore + AMOUNT);
    }

    function test_Pay_WhileListed_GoesToIssuerAndEndsSale() public {
        uint256 id = _listed();
        uint256 bakeryBefore = bakery.balance;
        vm.prank(market);
        pay.payInvoice{value: AMOUNT}(id);
        assertEq(bakery.balance, bakeryBefore + AMOUNT);

        vm.prank(investor);
        vm.expectRevert("Invoice is not for sale");
        pay.buyInvoice{value: PRICE}(id);
    }

    function test_RevertWhen_PayUnconfirmedInvoice() public {
        uint256 id = _create();
        vm.prank(market);
        vm.expectRevert("Invoice is not payable");
        pay.payInvoice{value: AMOUNT}(id);
    }

    function test_RevertWhen_StrangerPays() public {
        uint256 id = _sold();
        vm.prank(stranger);
        vm.expectRevert("Only the client can pay this invoice");
        pay.payInvoice{value: AMOUNT}(id);
    }

    function test_RevertWhen_PayWrongAmount() public {
        uint256 id = _sold();
        vm.startPrank(market);
        vm.expectRevert("Send exactly the invoice amount");
        pay.payInvoice{value: AMOUNT - 1}(id);
        vm.expectRevert("Send exactly the invoice amount");
        pay.payInvoice{value: AMOUNT + 1}(id);
        vm.stopPrank();
    }

    function test_RevertWhen_PayTwice() public {
        uint256 id = _sold();
        vm.startPrank(market);
        pay.payInvoice{value: AMOUNT}(id);
        vm.expectRevert("Invoice is not payable");
        pay.payInvoice{value: AMOUNT}(id);
        vm.stopPrank();
    }

    function test_RevertWhen_ListAfterPaid() public {
        uint256 id = _sold();
        vm.prank(market);
        pay.payInvoice{value: AMOUNT}(id);
        vm.prank(investor);
        vm.expectRevert("Invoice must be confirmed by the client first");
        pay.listForSale(id, PRICE);
    }

    // ---------- views ----------

    function test_IsOverdue_Lifecycle() public {
        uint256 id = _sold();
        assertFalse(pay.isOverdue(id), "not overdue before the due date");
        vm.warp(due);
        assertFalse(pay.isOverdue(id), "not overdue on the due date");
        vm.warp(uint256(due) + 1);
        assertTrue(pay.isOverdue(id), "overdue after the due date");
        vm.prank(market);
        pay.payInvoice{value: AMOUNT}(id);
        assertFalse(pay.isOverdue(id), "paid invoices are never overdue");
    }

    function test_RevertWhen_InvoiceDoesNotExist() public {
        vm.expectRevert("Invoice does not exist");
        pay.getInvoice(0);
        vm.expectRevert("Invoice does not exist");
        pay.getInvoice(1);
        _create();
        vm.expectRevert("Invoice does not exist");
        pay.getInvoice(2);
    }

    // ---------- full demo flow ----------

    function test_FullFlow_MatchesTheDemo() public {
        uint256 bakeryStart = bakery.balance;
        uint256 investorStart = investor.balance;
        uint256 marketStart = market.balance;

        uint256 id = _sold();
        vm.warp(due - 1 days);
        vm.prank(market);
        pay.payInvoice{value: AMOUNT}(id);

        assertEq(bakery.balance, bakeryStart + PRICE, "bakery got paid early, at a discount");
        assertEq(investor.balance, investorStart + (AMOUNT - PRICE), "investor earned the discount");
        assertEq(market.balance, marketStart - AMOUNT, "market paid the face value once");
        assertEq(address(pay).balance, 0, "contract holds nothing");
        assertEq(pay.paidOnTime(market), 1);
    }

    // ---------- fuzz tests: random inputs ----------

    function testFuzz_ListPrice_OnlyWithinFaceValue(uint256 price) public {
        uint256 id = _confirmed();
        vm.prank(bakery);
        if (price == 0 || price > AMOUNT) {
            vm.expectRevert("Price must be between 0 and the face value");
            pay.listForSale(id, price);
        } else {
            pay.listForSale(id, price);
            assertEq(pay.getInvoice(id).price, price);
        }
    }

    function testFuzz_Pay_LateIffAfterDueDate(uint32 secondsFromNow) public {
        uint256 id = _confirmed();
        uint256 payAt = block.timestamp + secondsFromNow;
        vm.warp(payAt);
        vm.prank(market);
        pay.payInvoice{value: AMOUNT}(id);

        bool late = payAt > due;
        assertEq(pay.paidLate(market), late ? 1 : 0);
        assertEq(pay.paidOnTime(market), late ? 0 : 1);
    }

    function testFuzz_Buy_SplitsMoneyExactly(uint96 price) public {
        price = uint96(bound(price, 1, AMOUNT));
        uint256 id = _confirmed();
        vm.prank(bakery);
        pay.listForSale(id, price);

        uint256 bakeryBefore = bakery.balance;
        vm.prank(investor);
        pay.buyInvoice{value: price}(id);
        assertEq(bakery.balance, bakeryBefore + price);
        assertEq(address(pay).balance, 0);
    }

    // ---------- known limitation (fix before mainnet) ----------

    /// @notice If the invoice holder can't receive AVAX, the client can't pay at all.
    /// Mainnet version should switch to pull payments (holder withdraws).
    function test_KnownIssue_RejectingHolderBlocksClientPayment() public {
        RejectsPayments badHolder = new RejectsPayments();
        vm.deal(address(badHolder), 10 ether);

        uint256 id = _listed();
        badHolder.buy{value: PRICE}(pay, id);
        assertEq(pay.getInvoice(id).holder, address(badHolder));

        vm.prank(market);
        vm.expectRevert("Transfer failed");
        pay.payInvoice{value: AMOUNT}(id);
    }
}
