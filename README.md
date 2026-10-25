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
| `app/index.html` | The web app: Business, Client, Investor and Public board views, with a built-in demo mode |

## Run the app locally

```bash
python3 -m http.server 8000 --directory app
```

Then open http://localhost:8000 in Chrome.

- **Demo mode** (default): a simulated chain in the browser with the same rules as the contract. No wallet needed.
- **Live mode**: click "Switch to live (Fuji)", paste a deployed contract address, and connect MetaMask on Avalanche Fuji. Opening the page from `http://localhost` is required, because MetaMask doesn't connect to pages opened as files.

## Status

Hackathon prototype on the Avalanche **Fuji testnet**. **Not ready for mainnet or real funds.** Before mainnet it needs: stablecoin payments, private invoice data (hash only on-chain), verified companies, pull payments, an emergency pause, automated tests and an independent security audit.
