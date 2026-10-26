# PayDay

Invoice financing on Avalanche. Contract in `contracts/`, tests in `test/` (Foundry), web in `app/` (landing `index.html`, app `app.html`).

## Design
- Anything visual (new page, section, component, dialog, email, image) follows [DESIGN.md](DESIGN.md) without being asked: Avalanche-native look, Satoshi, one gutter, red accent, the P/D logo.
- When David gives a new design or UX direction, apply it and update DESIGN.md in the same change, so the next session keeps it.

## Rules
- The deployed contract is `0x9983d1f7aF8328a92cFb76cBeb12c7894D14D0Ed` on Fuji (see README). Changing `PayDay.sol` means a new deploy and a new address.
- Ask David before deploying, pushing, or touching Vercel.
