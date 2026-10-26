# PayDay

Invoice financing through a smart contract on Avalanche: small businesses get paid today instead of waiting 90 days, and the contract handles the rest.

Winner of the Revoluchain hackathon (Prilep, October 2026), backed by Avalanche team1.

## How it works

1. **Business** issues an invoice on-chain (amount, client, due date).
2. **Client** confirms the debt from its own wallet, so there are no fake invoices.
3. **Business** lists the invoice for sale at a discount.
4. **Investor** buys it. The money goes to the business and ownership goes to the investor in one transaction.
5. **Client** pays on the due date, and the money goes automatically to whoever holds the invoice.

The contract also refuses to let an invoice be sold twice, records whether each payment was on time or late, and keeps a public payment record for every client.

## Project layout

| Path | What it is |
|---|---|
| `contracts/PayDay.sol` | The smart contract (Solidity 0.8.20+) |
| `test/PayDay.t.sol` | Foundry tests for every contract rule |
| `app/index.html` | The web app: Business, Client, Investor and Public board views, with a built-in demo mode |
| `foundry.toml` | Foundry settings (compiler 0.8.24, 1,000 fuzz runs per fuzz test) |

## Run the tests

Needs [Foundry](https://getfoundry.sh) (`forge`).

```bash
forge test                       # run all tests
forge test -vvv                  # with details on any failure
forge coverage --report summary  # how much of the contract the tests exercise
```

Current result: 42 tests passing, 100% line, branch and function coverage of `PayDay.sol`. The tests cover invoice creation rules, client-only confirmation, listing and price limits, the atomic buy, double-sale rejection, resale, on-time vs late payment, overdue status, and fuzz tests with random prices and payment times.

## Run the app locally

```bash
python3 -m http.server 8000 --directory app
```

Then open http://localhost:8000 in Chrome. That's the landing page; the app is at `/app.html`.

- **Live mode** (default): talks to the deployed Fuji contract. Anyone can read the invoices; connect MetaMask on Avalanche Fuji to act. Opening the page from `http://localhost` is required, because MetaMask doesn't connect to pages opened as files. `?c=0x…` points the app at another deploy.
- **Demo mode** (`/app.html?demo`): a simulated chain in the browser with the same rules as the contract. No wallet needed.

## Deployment

Live on **Avalanche Fuji testnet** (C-Chain, chain ID 43113), source verified on Snowtrace.

| | |
|---|---|
| Contract | [`0x9983d1f7aF8328a92cFb76cBeb12c7894D14D0Ed`](https://testnet.snowtrace.io/address/0x9983d1f7aF8328a92cFb76cBeb12c7894D14D0Ed) |
| Deploy transaction | [`0x94a7520c…3309a`](https://testnet.snowtrace.io/tx/0x94a7520cf47311eae78f02209d5109d4d15748f203238ff928ec46582de3309a) |
| Block | 60051288 |
| Deployed | 26 October 2026 |

Paste the contract address into the app's live mode to use it.

## Status

Hackathon prototype on the Avalanche **Fuji testnet**. **Not ready for mainnet or real funds.** Before mainnet it needs: stablecoin payments, private invoice data (hash only on-chain), verified companies, pull payments, an emergency pause, a way to cancel or reprice a listing, and an independent security audit.

Two of these limitations are pinned down by tests, so the fix can be checked later:
- `test_KnownIssue_RejectingHolderBlocksClientPayment`: if the invoice holder's wallet refuses AVAX, the client cannot pay at all (fix: pull payments).
- `test_List_RepriceWhileListed_Reverts`: a listed invoice cannot be repriced or taken off the market.
