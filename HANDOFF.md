# PayDay handoff

The shared notebook for David and his partner. Whoever starts working reads this first. Whoever stops updates it first. Claude keeps it current in every session (see "Teamwork" in [CLAUDE.md](CLAUDE.md)).

Last updated: 2026-10-27 by David

## Right now

- **Live on main:** contract on Fuji, landing page, app, design system.
- **Who is working:** nobody (update this line when you start and stop).

## Waiting for David's review

Open pull requests that David has not approved yet. Claude tells David about every one of these at the start of his session.

| PR / branch | Who | What changed | Status |
|---|---|---|---|
| (none) | | | |

## In progress / stopped halfway

Work that started but is not in a pull request yet, or a PR that is a draft. The next person picks it up from here.

| Branch | Who | Where it stopped | Next step |
|---|---|---|---|
| (none) | | | |

## Next steps (in order)

Anyone can ask "what are the next steps?" and Claude answers from this list. Top is next.

1. (add the first hackathon task here)

## Decisions

Things we agreed on, so nobody redoes the argument. Newest first.

- 2026-10-27: Nothing goes straight to `main`. Partner works on branches and opens pull requests. David reviews and merges.

## Change log

One line per merged or pushed change. Newest first. Format: `date, who, branch/PR, what changed, files`.

- 2026-10-27, David, main (16217a4), landing: proof points above hero buttons on desktop; Status section redesigned (grouped, stacked text, Planned chips, 0 of 7 counter). app/index.html, DESIGN.md.
- 2026-10-27, David, main (68797f9), phone navbar rebuilt: account pill + ☰ menu (wallet block, labelled Demo mode); spacing under hero card and headline; fixed Public board tab font clash. app/app.html, DESIGN.md.
- 2026-10-27, David, main (b7d8899), CI: forge tests and gitleaks secret scan run on every PR. .github/workflows/checks.yml.
- 2026-10-27, David, main (61dcc9b), phone fixes: one-row navbar, bottom tab bar, Fraud test in a sheet, sponsor strip keeps looping under Reduce Motion, tap to pause. app/app.html, app/index.html, DESIGN.md.
- 2026-10-27, David, setup, added HANDOFF.md, PR template and teamwork rules.
