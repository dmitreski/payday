# PayDay handoff

The shared notebook for David and his partner. Whoever starts working reads this first. Whoever stops updates it first. Claude keeps it current in every session (see "Teamwork" in [CLAUDE.md](CLAUDE.md)).

Last updated: 2026-11-17 by Martino

## Right now

- **Live on main:** contract on Fuji, landing page, app, design system.
- **Who is working:** nobody (update this line when you start and stop).

## Market research (read this first, David)

Martino did deep research on four markets with Claude. Files are in [research/](research/). Start with [market-comparison.md](research/market-comparison.md) (one page, side by side), then open the full report for any market:

- [eu-market.md](research/eu-market.md): Croatia first. Work through a HANFA-licensed factor, EURC + SEPA, professional investors only.
- [uae-market.md](research/uae-market.md): second market via ADGM, with a licensed partner.
- [usa-market.md](research/usa-market.md): third. Start as "US capital, EU assets"; invoice stakes are likely securities.
- [north-macedonia-market.md](research/north-macedonia-market.md): home test ground for phase 2 (test money); fiat pilot with a licensed financial company later.

**Bottom line:** in all four markets PayDay needs a licensed partner as the legal buyer of the invoices; it cannot run as a standalone "we never touch the money" marketplace. Ranking for real money: 1 EU (Croatia), 2 UAE, 3 USA, 4 North Macedonia (but #1 for phase 2 testing). Not legal advice; every report says what a lawyer must check.

**Changes that help in all four markets** (details in the comparison file): remove admin power over invoice tokens before the audit; one official e-invoice ID = one token; client confirmation worded as legal notice of assignment; hashes only on-chain; plan for recourse. These touch `contracts/`, so they need David's decision. Nothing was changed in the contract.

## Waiting for David's review

Open pull requests that David has not approved yet. Claude tells David about every one of these at the start of his session.

| PR / branch | Who | What changed | Status |
|---|---|---|---|
| `martino/market-research` (PR) | Martino | Added 5 files in `research/`: market reports for EU, UAE, USA, North Macedonia and a one-page comparison. Docs only, no code touched. | Needs David's approval |

## In progress / stopped halfway

Work that started but is not in a pull request yet, or a PR that is a draft. The next person picks it up from here.

| Branch | Who | Where it stopped | Next step |
|---|---|---|---|
| (none) | | | |

## Next steps (in order)

Anyone can ask "what are the next steps?" and Claude answers from this list. Top is next.

1. David reads `research/market-comparison.md` and decides: confirm the ranking (EU first, North Macedonia for phase 2) and whether to do the 5 contract changes before the audit.
2. If yes, plan the contract changes in `contracts/` and `test/` (David's area; new deploy means new address).
3. (add the next hackathon task here)

## Decisions

Things we agreed on, so nobody redoes the argument. Newest first.

- 2026-11-17: Proposed by Martino, not yet decided: EU (Croatia) first for real money, North Macedonia for phase 2 test money, structure Prilep DOOEL (tech) + Croatian d.o.o. (EU-facing). See research/market-comparison.md.
- 2026-10-27: Nothing goes straight to `main`. Partner works on branches and opens pull requests. David reviews and merges.

## Change log

One line per merged or pushed change. Newest first. Format: `date, who, branch/PR, what changed, files`.

- 2026-11-17, Martino, martino/market-research, added four market reports and a comparison. research/*.md, HANDOFF.md.
- 2026-10-27, David, main (8d2755f), phones: How it works cards pin to the screen and open one by one as you scroll (pinned scroll section); compact card frame. app/index.html, DESIGN.md.
- 2026-10-27, David, main (e428d97), landing Status section is now a snake chain (3 right, 2 left, 2 right, one connected line, pulse runs through it); footer credits David, Martino, Davor and Dzulijano. app/index.html, DESIGN.md.
- 2026-10-27, David, main (9e76c64), landing Status section is now a milestone chain: title on top, 7 milestones in two columns with pulsing rail and nodes, Planned chips. app/index.html, DESIGN.md.
- 2026-10-27, David, main (16217a4), landing: proof points above hero buttons on desktop; Status section redesigned (grouped, stacked text, Planned chips, 0 of 7 counter). app/index.html, DESIGN.md.
- 2026-10-27, David, main (68797f9), phone navbar rebuilt: account pill + ☰ menu (wallet block, labelled Demo mode); spacing under hero card and headline; fixed Public board tab font clash. app/app.html, DESIGN.md.
- 2026-10-27, David, main (b7d8899), CI: forge tests and gitleaks secret scan run on every PR. .github/workflows/checks.yml.
- 2026-10-27, David, main (61dcc9b), phone fixes: one-row navbar, bottom tab bar, Fraud test in a sheet, sponsor strip keeps looping under Reduce Motion, tap to pause. app/app.html, app/index.html, DESIGN.md.
- 2026-10-27, David, setup, added HANDOFF.md, PR template and teamwork rules.
- 2026-10-28, David, main, fixed teammate's name in the footer and here: Dzulijano (was Juliano).
