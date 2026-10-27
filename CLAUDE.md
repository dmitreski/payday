# PayDay

Invoice financing on Avalanche. Contract in `contracts/`, tests in `test/` (Foundry), web in `app/` (landing `index.html`, app `app.html`).

## Design
- Anything visual (new page, section, component, dialog, email, image) follows [DESIGN.md](DESIGN.md) without being asked: Avalanche-native look, Satoshi, one gutter, red accent, the P/D logo.
- When David gives a new design or UX direction, apply it and update DESIGN.md in the same change, so the next session keeps it.

## Teamwork (two people, two machines)
David (`dmitreski`) owns `main` and approves everything. His partner works on branches. [HANDOFF.md](HANDOFF.md) is the shared memory so either person can stop and the other continues. Follow this in every session, whoever is typing.

**Start of every session**
1. `git fetch`, then `git pull` on the current branch. Run `gh pr list` and read `HANDOFF.md` on `main` and on any open branch, since the other person's latest notes live on their branch.
2. Ask or work out who is typing (`git config user.name`).
3. If it is David: before anything else, tell him every PR in "Waiting for David's review" and every branch in "In progress", in plain words (who, what changed, link). Then give the next steps.
4. If it is the partner: tell him what David merged since his last session and what is next.
5. Set the "Who is working" line in HANDOFF.md.

**While working**
- Never commit to `main` and never push to `main`. Work on a branch named `<name>/<topic>` (for example `partner/landing-copy`).
- Small commits, small pull requests, merge often. Pull `main` into the branch before opening the PR.
- Keep the two of you in different files where possible: one on `contracts/` and `test/`, the other on `app/`.
- Never commit `.env`, private keys or tokens. Never print them.
- The partner does not deploy the contract or touch Vercel. Only David does, and he says yes first (see Rules below).

**End of every session (or when asked to stop)**
1. Commit and push the branch. If the work is not finished, open a draft PR.
2. Update HANDOFF.md on the branch: "Waiting for David's review" (if it is ready), "In progress" (where it stopped, what is next), "Next steps", and one line in "Change log". Set "Who is working" to nobody.
3. If it is the partner and the PR is ready, tell him to ask David for review, and write "Needs David's approval" in the PR.
4. Say what you updated: `Updated: <files>`.

**David's review**
- David never merges blind. Claude summarizes the diff in plain words (what changed, what could break, files touched, Vercel preview link) before David approves.
- Only David approves and merges. After the merge, move the row out of "Waiting for David's review" and into the change log.

**"What are the next steps?"** Read the "Next steps" and "In progress" sections of HANDOFF.md (and open PRs) and answer from there. Do not invent a new plan.

## Rules
- The deployed contract is `0x9983d1f7aF8328a92cFb76cBeb12c7894D14D0Ed` on Fuji (see README). Changing `PayDay.sol` means a new deploy and a new address.
- Ask David before deploying, pushing to `main`, or touching Vercel. The partner may push his own branches and open pull requests without asking.
