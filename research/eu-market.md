# PayDay: EU market research

Market report 1 of 3 (EU done, UAE and USA next). Written 17 November 2026 by Martino with Claude (claude.ai research chat).
Not legal advice. Cost and timeline figures mostly come from consultancies, not regulators. Re-check before deciding.

## Short version

- **Verdict:** PayDay can work in the EU, but not in its current form. It has to start as a regulated-partner model, not a standalone DeFi app.
- **First market:** Croatia. Euro, mandatory B2B e-invoicing since 1 Jan 2026, low factoring use with fast growth, team speaks the language.
- **First structure:** a Croatian d.o.o. that provides software and verification to a HANFA-licensed Croatian factoring company, which is the legal buyer of the invoices. PayDay never holds funds.
- **Investors:** professional/institutional only at the start. No retail.
- **Settlement:** EURC (euro stablecoin) instead of USDC, through a MiCA-licensed partner, with SEPA euro in and out so businesses and clients never touch crypto.

## Decisions and answers from the chat

### "We don't touch the money, can we be a marketplace without a licensed partner?"
Partly.
- **What it fixes:** payment licensing (PSD2). If funds really go straight from investor to business and from client to investor, and PayDay can't stop or redirect them, there's a good argument that we're not a payment service.
- **What it doesn't fix:**
  1. **Factoring licence.** In Croatia and Germany the licence is needed by whoever *buys* invoices as a business. Regular investors on PayDay could be doing unlicensed factoring, and we would be organising it. In Germany that is a crime.
  2. **MiCA.** Running a marketplace where invoice tokens are traded is a crypto-asset service even without custody. The "fully decentralised" exemption (MiCA Recital 22) is narrow: admin keys, a pause button, an operated front-end, upgrades and fees all make us an intermediary.
  3. **GDPR and AML** apply either way.
- **Trade-off:** every feature that makes PayDay safe (verified companies, pause, dispute rules, collections) is also what makes us an intermediary in the law's eyes.
- **Real money still needs a regulated party.** Clients pay euros by bank transfer, and turning those into EURC on-chain is regulated.

### Marketplace options that avoid depending on one partner
1. **Licensed buyers only.** Only licensed factors, banks and regulated funds can buy invoices; they carry the licence and PayDay stays software plus verification. Strongest version of the "middleman" idea.
2. **Software for a factor.** A licensed factoring company uses PayDay to verify and run invoices and pays us a fee.
3. **One token per invoice, no fractions.** Keeps open the argument that each token is a unique asset outside MiCA (uncertain), but doesn't solve the factoring question.

### Estonia?
- Easy and cheap to incorporate, but **company location doesn't decide which licence is needed**. Where the invoices, businesses and investors are does. Croatian invoices mean Croatian factoring rules, even with an Estonian company.
- Estonia regulates finance too: the FIU authorises "financial institution" activity and Finantsinspektsioon licenses crypto, payment and creditor activity, with rising staff competence requirements. Whether invoice buying needs FIU authorisation there needs an Estonian lawyer.
- **Tax trap:** an Estonian company managed day to day from Prilep can be taxable in North Macedonia.
- Estonia or Lithuania make sense later for an EU-wide crypto (CASP) licence. For the pilot, Croatia fits better.

### What it costs the founders

| Stage | What you get | Rough cost | When |
|---|---|---|---|
| 0. Foundation | Croatian company, legal opinion, audit, regulator meetings, rebuilt data model | €40,000–90,000 | Now to Q1 2027 |
| 1. Partner pilot | Real money via a licensed Croatian factor, 10–30 businesses | €100,000–200,000 running budget | Q2–Q4 2027 |
| 2. Own licences | Croatian factoring licence and/or CASP licence, Slovenia | €250,000–500,000 | 2028 |

- **Totals:** stages 0+1 ≈ €140,000–290,000. Full independence by 2028 ≈ €400,000–800,000.
- **Locked capital is not spent money:**
  - d.o.o.: €2,500
  - Croatian factoring licence: ~€133,000 (HRK 1 million)
  - CASP licence: €50,000–150,000 own funds
  - EMI licence: €350,000, plus €430,000–600,000+ in the first year. **Avoid.**
- **Stage 0 breakdown:**
  - Company setup: a few hundred to ~€1,500 in fees (estimate)
  - Legal opinion: €10,000–30,000
  - Smart-contract audit: €15,000–50,000
  - HANFA/HNB innovation hubs: free
- **Scrappy start:** about €10,000–20,000 (≈ €2,500–5,000 per founder for four) covers a free HANFA meeting, the Team1 Mini Grant application (up to $10,000), the Croatian company and one focused legal opinion. The audit only matters before real money.
- **Stage 1 should be funded** by pre-seed investment, an EIC Pre-Accelerator grant (North Macedonia is eligible) or partner fees, not by the founders personally.
- **Break-even:** a €150,000/year budget needs about €15M/year of financed invoices at a 1% fee, or €30M at 0.5%. Croatia's factoring market was about €1.9bn in 2025.

### Next steps agreed in chat
1. Team agrees on stage 0 only.
2. Book the free HANFA innovation hub meeting. Ask: "Are professional investors buying invoices on our platform doing factoring under the Factoring Act?" and "Is a single-invoice token a crypto-asset?"
3. Apply for the Avalanche Team1 Mini Grant.
4. Add a platform fee to the model (no fee = no business).

### Open questions for the team
- Who are the first investors: community/retail wallets, or funds and factoring companies? This decides most of the licensing.
- Will founders self-fund stage 0? Salaries in stage 1?
- Does everyone (David especially) agree on a Croatian company base?
- The "PayDay brain" artifact (BRIDGes problem space) couldn't be opened from Martino's account. Share it so the UAE/USA research uses the same problem space.

---

# Full research report

## 1. Executive summary and verdict

The core idea fits where the EU is heading (mandatory e-invoicing, digital identity wallets, regulated euro stablecoins):
- tokenise a debtor-confirmed invoice;
- sell it at a discount;
- route the payment to the current holder.

The debtor-confirmation step is a real anti-fraud strength. Fabricated and double-pledged invoices were behind the First Brands scandal in 2025.

But the legal reality of selling an invoice in the EU is set by national civil law and national financial regulation, not by the smart contract. Four facts shape everything:

1. **Invoice trading has no EU passport.** The crowdfunding regulation (ECSPR, 2020/1503) covers loans and securities, not purchases of receivables. In Germany (BaFin, KWG), Croatia (HANFA, Factoring Act) and France, buying receivables commercially is a licensed activity.
2. **Tokens and stablecoins bring in MiCA.** Depending on design, an invoice token is outside MiCA (unique, non-fungible), an "other crypto-asset", or, if standardised, a MiFID II financial instrument. Running the marketplace is a CASP service, and the grandfathering period ended on 1 July 2026.
3. **Handling other people's money is a payment service.** It needs a payment or e-money licence, or a licensed partner.
4. **GDPR and public chains don't mix well.** The EDPB's final blockchain guidelines (7 July 2026) advise against putting personal data on-chain in clear, encrypted or even hashed form. For sole traders, invoice data and payment reputation are personal data.

**Staged model:**
- **Stage A:** PayDay as a technology and registry layer for a licensed factoring company.
- **Stage B:** regulated stablecoin settlement through a MiCA-licensed partner.
- **Stage C:** PayDay's own licences (Croatian factoring and/or CASP).
- **Retail investors:** last, if at all.

## 2. Regulatory map

### Key terms
- **Factoring:** a business sells unpaid invoices (receivables) to a buyer (the "factor") at a discount.
  - *Recourse:* the factor can claim back from the seller if the debtor doesn't pay.
  - *Non-recourse:* the factor bears that loss. PayDay today is non-recourse.
- **Invoice trading:** factoring through a marketplace where many investors buy invoices.
- **Assignment (cession):** the legal transfer of the right to be paid.
- **CASP:** crypto-asset service provider, the MiCA licence.
- **EMT (e-money token):** a MiCA stablecoin pegged to one currency, such as USDC or EURC.
- **Obliged entity:** a firm that must do AML checks.

### MiCA (Regulation 2023/1114)
In force; CASP transition ended 1 July 2026.
- **Token classification**, under ESMA's "substance over form" guidelines:
  - **(a) One unique, non-fungible token per invoice:** may be excluded under Article 2(3). Best case, but uncertain.
  - **(b) Fractionalised into identical units:** "other crypto-assets". Needs a white paper unless exempt (fewer than 150 people per member state, under €1M over 12 months, or qualified investors only). Running the venue needs a CASP licence.
  - **(c) Pooled or standardised notes:** risk becoming MiFID II instruments, the heaviest regime.
- **CASP own funds:** €50,000, €125,000 or €150,000 depending on the service class.
- **Stablecoins:** USDC and EURC are EMTs issued by Circle's French e-money institution. Non-euro EMTs face use caps, which are the issuer's problem and far above our volumes. EU invoices are in euros, so use EURC. USDT has no EU issuer and is restricted on EU platforms.

### Other EU regimes
- **MiFID II:** only matters if we pool invoices into standardised notes or give investment advice. Avoid early.
- **DLT Pilot Regime:** not a fit unless we later securitise.
- **ECSPR:** invoice trading is outside its scope, so there is no EU crowdfunding passport. The Commission's review (expected 2026) may consider adding it. Watch: this could become the best route later.
- **PSD2 / PSD3 / PSR:**
  - PSD2 is in force. PSD3/PSR were agreed in Nov 2025 and are expected to apply around 2028.
  - Receiving investor euros and passing them on, or collecting the debtor's payment, is money remittance.
  - A purely non-custodial contract weakens that argument, but supervisors look at control (admin keys, pause).
  - Transferring EMTs for clients can be both a MiCA service and a PSD2 service.

### National factoring licensing

| Country | Licensed? | Notes |
|---|---|---|
| Germany | Yes, §1(1a) no. 9 KWG, BaFin licence | No minimum regulatory capital. Unlicensed activity is a criminal offence (§54 KWG). |
| Croatia | Yes, Factoring Act (OG 94/14), HANFA | d.o.o./d.d. with ≥ HRK 1M (~€133,000) paid-in cash capital. Only 3 licensed: Adriatic Zagreb Factoring, ESC Factoring, FINSPOT (all Zagreb). |
| France | Generally yes (banking monopoly) | Needs local counsel. |
| Italy | Regulated (Law 52/1991; Art. 106 TUB) | Platforms usually professional-investor only. |
| Spain, Netherlands, Lithuania | Lighter or no factoring-specific licence (to confirm) | Payment and AML rules still apply. |

**The catch:** in Germany and Croatia the licence attaches to whoever buys commercially. A regular investor on PayDay could be doing unlicensed factoring, and the platform could be seen as organising it.

**Consumer credit (Directive 2023/2225):** covers consumers only. Stay B2B and block invoices addressed to consumers.

**Retail vs professional investors:** no EU regime cleanly allows retail investors to buy single invoices. Start with professional and qualified investors only.

### Actor by actor

| Actor | Main rules | Needs |
|---|---|---|
| Platform (PayDay) | MiCA, PSD2/3, national factoring law, AMLR (from 10 July 2027), GDPR, eIDAS | EU entity, partner licences first, AML programme, DPIA, legal opinion |
| SME seller | Assignment law, VAT/e-invoicing, MiCA offeror rules if tokens are fungible | Valid invoice, no anti-assignment problem, KYB, warranties |
| Investor | Factoring licensing, MiCA/MiFID, AML, tax | KYC/KYB, professional status, investor agreement |
| Debtor | Notice and discharge rules, Late Payment Directive, GDPR if a sole trader | KYB, signed acknowledgment, a way to pay in euros |
| Stablecoin issuer / ramp | MiCA EMT rules, PSD2, TFR | Circle (EURC/USDC) plus a MiCA CASP |

### Lightest realistic licensing path
1. **Now:** testnet, no real money.
2. **2027 partner model:** a HANFA-licensed factor is the buyer of record, a bank or EMI handles euros, and a CASP handles EURC.
3. **Innovation hubs:** HANFA and HNB hubs in Croatia (no sandbox there), Bank of Lithuania sandbox and Newcomer Programme, Estonia's Finantsinspektsioon hub. The European Blockchain Regulatory Sandbox has ended with no successor yet.
4. **2028+:** own Croatian factoring licence (~€133,000) and/or CASP (€50,000–150,000).

## 3. AML/KYC
- **Travel rule (TFR, 2023/1113, since 30 Dec 2024):** CASPs exchange sender and recipient info on crypto transfers. Above €1,000 to or from self-hosted wallets, they must verify wallet ownership.
- **AMLR (2024/1624), from 10 July 2027:**
  - single EU rulebook;
  - CASPs and crowdfunding platforms are obliged entities;
  - customer checks for crypto transactions ≥ €1,000;
  - 25% beneficial-ownership threshold.
  - The EU AML authority (AMLA) has been operational since July 2025.
- **For PayDay:**
  - KYC/KYB every party, including beneficial owners;
  - bind wallets to verified identities (signed-message proof);
  - sanctions and PEP screening;
  - on-chain analytics;
  - a contract-level allow-list;
  - related-party checks (fake invoices between related companies can launder money).

## 4. Legal mechanics of selling an invoice on-chain
- **Assignment is national civil law.** Debtor consent isn't needed, but **until the debtor is notified it can validly pay the original creditor**. That's the central risk: the debtor pays the SME by bank transfer instead of through the contract.
- **Anti-assignment clauses:**
  - Germany §354a HGB: the assignment is valid between merchants, but the debtor can still pay the original creditor.
  - France: bans are not effective against the assignment.
  - Italy: enforceable only against an assignee who knew of the ban.
  - Estonia: limits their effect.
- **True sale:** heavy recourse or SME control over collections can lead a court to treat the sale as secured lending.
- **Token transfer ≠ legal transfer** in most member states. What works is a **master assignment agreement** signed by SME, investor and debtor:
  - each on-chain transfer is an assignment;
  - the ledger is agreed evidence of who holds the claim;
  - the debtor is notified at first sale and pays only into the contract or escrow channel;
  - the real signed invoice is hashed on-chain.
- **Cross-border:** Rome I Art. 14 applies. There is no EU rule on third-party effects (priority if the invoice is sold twice); the 2018 proposal was withdrawn on 6 Oct 2025. Keep pilots domestic: Croatian SME, Croatian debtor, Croatian-law invoice.
- **Signatures (eIDAS / eIDAS 2):**
  - A wallet signature is a "simple" e-signature at best. Bound to a KYB-verified representative it gets closer to "advanced". Only a QES equals a handwritten signature.
  - EUDI Wallets are due around end-2026.
  - **Recommendation:** two confirmations from the debtor:
    1. a QES/EUDI-signed acknowledgment off-chain, with its hash on-chain;
    2. the on-chain wallet confirmation.
  - The acknowledgment should cover amount, due date, undisputed receipt and payment channel.
- **Collections:**
  - European Payment Order (any size, cross-border);
  - European Small Claims Procedure (up to €5,000, cross-border);
  - Croatia: enforcement on the basis of an "authentic document" (vjerodostojna isprava), such as an invoice, through notaries.
  - PayDay or the factor must be appointed **servicer and collection agent**, because hundreds of token holders can't each sue.
- **Late payment:**
  - Directive 2011/7/EU: 60-day B2B max unless agreed and not grossly unfair; interest at ECB rate + 8pp; €40 per late invoice.
  - The proposed 30-day Late Payment Regulation is effectively dead: blocked in Council, and the Commission's 2027 work programme (4 Nov 2026) lists it for withdrawal.
  - The problem is large: EU Payment Observatory 2025 average B2B payment period 60.3 days (agreed terms 43). Intrum 2026: 12.13% of revenues paid late, and 62% of businesses pay suppliers late because their own customers do.

## 5. Data protection and e-invoicing

### GDPR
- **EDPB Guidelines 02/2025 (v2.0, 7 July 2026):**
  - wallet addresses, transaction IDs and contract storage can be personal data;
  - don't store clear, encrypted or hashed personal data on-chain;
  - a DPIA is expected;
  - a controller entity is encouraged.
- **Problems today:**
  - plain-text invoice reference, amount and client address on-chain;
  - a permanent public late/on-time record (for sole traders this is credit profiling, cf. CJEU SCHUFA C-634/21);
  - no erasure path.
- **Fix:**
  - **salted commitments** on-chain;
  - all data off-chain in an EU-hosted, erasable database;
  - public reputation for legal entities only, visible to KYC'd investors;
  - consider a permissioned Avalanche L1 or an allow-list.

### E-invoicing
- **EU framework:** EN 16931 standard. ViDA (Directive 2025/516) makes intra-EU B2B e-invoicing mandatory from 1 July 2030.
- **Country status:**
  - **Croatia:** Fiscalization 2.0 (OG 89/2025). Mandatory B2B/B2G e-invoicing and e-reporting since 1 Jan 2026, including **payment and rejection reporting**. Non-VAT businesses must issue from 1 Jan 2027.
  - **Italy:** SDI since 2019.
  - **Belgium:** since 1 Jan 2026.
  - **France:** receiving by all and issuing by large firms from 1 Sep 2026; SMEs issue from 1 Sep 2027.
  - **Germany:** receiving since 2025, issuing 2027–28.
  - **Poland:** KSeF from 2026.
- **Use:**
  - A fiscalised e-invoice is a stronger anti-fake check than wallet confirmation alone.
  - Partner with or become a certified e-invoicing intermediary / Peppol access point.
  - Ingest the invoice with consent, match it to the on-chain commitment, and watch for credit notes and rejections.

## 6. Market
- **Size:**
  - EU factoring turnover €2,164bn in 2025 (+4.8%, 11.5% of GDP, EUF).
  - Wider Europe ~€2,658bn (FCI); global > €4 trillion.
- **Who's underserved:** bank factors dominate, and a typical client has ~€8M turnover. Micro and small SMEs are underserved.
- **Late payment:** 52% of European companies reported late-payment problems in 2024.

| Rank | Country | Why | Watch-outs |
|---|---|---|---|
| 1 | Croatia | €1,915M (2.1% GDP), +24.6% in 2025; euro; e-invoicing with payment reporting; 3 factors as partners; fast enforcement; team link | Small; HANFA licence needed to buy; few local professional investors |
| 2 | Slovenia | Euro, near Croatia, exporters to DE/AT | Small; licensing TBC |
| 3 | Bulgaria | €7.6bn (6.6% GDP), euro since 1 Jan 2026 | Weaker enforcement, fraud risk |
| 4 | Lithuania/Baltics | Best licensing hub | Small invoice market |
| 5 | Greece | Long payment terms | Language, enforcement |
| 6 | Poland | Big SME base, KSeF | Zloty, established fintechs |
| Later | Germany/NL | Biggest markets | BaFin licence, Billie, Mondu, banks |

## 7. Competitors and lessons
- **Bank factoring:** cheap for big clients, slow for micro-SMEs.
- **Fintech invoice finance:** MarketFinance, Finexkap, Defacto, Aztec, Italian/Spanish/Baltic platforms. Mostly licensed or partnered; many have pivoted to embedded lending.
- **Embedded B2B BNPL:** Billie, Mondu, Hokodo. They finance the buyer at checkout, which serves the same "get paid now" need.
- **Blockchain/RWA:**
  - Centrifuge (Codex pool loss in 2022; moved to SPV per pool)
  - Polytrade
  - Credix
  - Goldfinch (losses > $18M, winding down)
  - Tradeteq
  - Avalanche institutional L1s (Spruce)

| Case | What happened | Lesson |
|---|---|---|
| we.trade | Insolvent June 2022 | Adoption and business model, not tech. Go where users are (e-invoicing). |
| Marco Polo | Insolvent Feb 2023, €5.2M debts | Competing bank consortia rarely work; unit economics first. |
| Contour | Shut 2023 | Same pattern. |
| Goldfinch | Borrower defaults (~58% loss on one), winding down 2026 | Transparency ≠ credit quality. Need underwriting, covenants, legal recourse. |
| First Brands (Sep 2025) | $2.3bn factoring liabilities probed; fake and double-financed invoices | Double financing is fraud #1: registry checks, debtor notice, controlled payment channels. |

## 8. Stablecoins and rails
- **EURC for EU invoices.** USDC only for non-EU investors, converted at entry. Other MiCA euro EMTs: EURCV, EURQ, EURR, EURI, EUROe.
- **SMEs and debtors shouldn't touch crypto:**
  - fiat in and out via a CASP/EMI partner;
  - SEPA Instant with Verification of Payee;
  - a virtual IBAN per invoice;
  - custodial/embedded wallets or account abstraction (email/passkey login, sponsored gas);
  - debtor confirmation via QES/EUDI.
- **Licensing consequence:** custody and transfer of EURC are CASP services, and the fiat legs are payment services. Hence partners at first.

## 9. Risk design the market expects

| Risk | Practice | PayDay change |
|---|---|---|
| Credit | Credit insurance (Allianz Trade, Coface, Atradius), debtor limits | Insurer partner, debtor limits, price by debtor risk |
| Dilution/dispute | 10–20% holdback, seller liable for disputes | "Limited recourse": SME liable for disputes, fraud and dilution; optional holdback |
| Fraud/double financing | Debtor notice, registry checks | Keep debtor confirmation, add e-invoice match, hash uniqueness, warranties, payment-redirect notice |
| Concentration | Limits per debtor/seller/sector | Hard-coded and policy limits |
| Smart contract | Audit, continuity | Audit, pause, multi-sig, upgrade policy, bug bounty |
| Credit data | Bureaus (Creditreform, D&B, FINA) | Combine with PayDay history for legal entities |

## 10. Product changes vs the 7 planned milestones

| # | Milestone | Verdict | EU additions |
|---|---|---|---|
| 1 | Verified companies | Essential | KYB with UBOs at 25%, sanctions/PEP, signer authority, allow-list |
| 2 | Signed invoice hashed on-chain | Adjust | Salted commitments, fiscalised e-invoice match, uniqueness check |
| 3 | Investor agreement | Expand | Master assignment signed by SME, investor and debtor; notice; true-sale analysis; servicer appointment; Croatian law |
| 4 | USDC payments | Change | EURC first via a partner; SEPA Instant; virtual IBANs |
| 5 | Private data | Go further | Salted commitments plus erasable off-chain data; legal-entity-only reputation; DPIA; permissioned L1 option |
| 6 | Emergency pause | Essential | Multi-sig plus timelock, incident response |
| 7 | Security audit | Essential | Re-audit after changes, bug bounty |
| — | Pull payments, cancel/reprice | Good | Keep |
| New | Recourse/dilution rules | Missing | Seller liable for disputes and fraud, holdback |
| New | Credit insurance / factor backstop | Missing | Needed for professional money |
| New | AML / travel rule | Missing | Via the CASP partner, wallet proofs, monitoring |
| New | Servicing and collections | Missing | Reminders, statutory interest, €40, enforcement |
| New | B2B only | Missing | Block consumer debtors |
| New | Investor eligibility | Missing | Professional only at launch |
| New | Platform fee | Missing | 0.5–1.5% of face value, or SaaS fee to the factor |

## 11. Phased go-to-market

### Phase 0: now to Q1 2027 (€40,000–90,000)
- **Company:** Croatian d.o.o. (€2,500). Keep the North Macedonian company for development. The SAA gives right of establishment, not EU licence passports.
- **Legal opinion** (€10,000–30,000): factoring, MiCA classification, payment flows.
- **Regulators:** HANFA and HNB innovation hubs.
- **Product:** rebuild the data model, add an allow-list, audit (€15,000–50,000).
- **Funding:** Team1 Mini Grant; start EIC Pre-Accelerator / Accelerator.
- **Pilot:** testnet only.

### Phase 1: Q2–Q4 2027 (€100,000–200,000)
- **Partner:** one of the 3 HANFA factors as buyer of record. PayDay provides origination, verification, registry, servicing and investor portal for a fee.
- **Money flows:** euros via the partner's bank; optional EURC via a CASP.
- **Scale:** 10–30 SMEs with creditworthy domestic debtors.
- **Compliance:** AMLR applies from 10 July 2027.
- **Prove:** default and dilution rates, debtor adoption, unit economics.

### Phase 2: 2028 (€250,000–500,000)
- **Expand:** Slovenia (maybe Bulgaria), cross-border professional investors, credit insurance, secondary resale.
- **Licensing options:**
  - **(a) Croatian factoring licence:** ~€133,000 capital, 6–12 months.
  - **(b) MiCA CASP (HANFA):** €50,000–150,000 own funds, ~4–6 months after a complete filing.
  - **(c) EMI only if we must hold client funds:** Lithuania €350,000 capital, €430,000–600,000+ first year.
  - **Comparison:** a BaFin factoring licence has no minimum capital (fees ~€2,500–30,000), but needs German substance.
- **Watch:** the ECSPR review.

### Phase 3: 2029+
- Licensed factor and/or passported CASP.
- Partners in Germany and Italy.
- Retail only with a clear legal basis.

**Don't:** launch mainnet with real money and open pseudonymous investors before Phase 1.

## 12. Funding and support

| Program | Status (Nov 2026) | Fit |
|---|---|---|
| EIC Accelerator | North Macedonia associated to Horizon Europe; up to €2.5M grant + equity | Needs Phase 1 traction |
| EIC Pre-Accelerator (Widening) | North Macedonia is a Widening country | Good early fit |
| European Blockchain Sandbox | Ended 2026, no successor, EEA only | Not now |
| Western Balkans Growth Plan | €6bn to governments; up to €750.4M for North Macedonia | Indirect only |
| Avalanche | Retro9000 wound down; Team1 Mini Grants up to $10,000 open; accelerator closed | Apply now |
| National | Croatian innovation agency (after incorporation); North Macedonia Fund for Innovation and Technology Development | Check calls |
| Regulator help | HANFA/HNB hubs, Lithuania Newcomer, Estonia hub | Use before paying for licences |

## 13. Open questions and risks
1. **Token classification:** is a single-invoice token outside MiCA? Design one token per invoice, no fractions.
2. **Factoring status:** is a marketplace buyer "doing factoring"? This is the biggest question.
3. **Debtor adoption:** will accounts-payable teams sign confirmations? Target mid-sized domestic debtors and offer e-invoice and QES flows.
4. **Off-platform payment leakage:** mitigate with notice, payment instructions, seller liability and fiscalization payment reports.
5. **Cross-border priority:** no EU rule, so stay domestic.
6. **Timing:** PSD3/PSR ~2028, AMLR July 2027, ECSPR review pending, Late Payment Regulation being withdrawn.
7. **Tax:** factoring is VAT-taxable (CJEU MKG, C-305/01); corporate tax across the North Macedonian and Croatian entities.
8. **Economics:** 4% on 90 days (~17% a year) is high for good debtors. Price by debtor risk.
9. **Partner dependence:** negotiate data/IP ownership and non-exclusivity.
10. **Sources:** several costs and timelines come from consultancies; some 2026 status items are secondary. Re-check.

## Key sources
- MiCA 2023/1114 and ESMA guidelines on crypto-assets as financial instruments (esma.europa.eu)
- BaFin factoring pages (bafin.de)
- Croatian Factoring Act, CMS summary (cms.law)
- HANFA innovation hub (hanfa.hr)
- EDPB Guidelines 02/2025 on blockchain
- EUF annual factoring data (euf.eu.com); FCI 2025 statistics (fci.nl)
- EU Payment Observatory 2025 summary (single-market-economy.ec.europa.eu)
- Croatia Fiscalization 2.0 (sovos.com, eu-einvoicing.com)
- Withdrawal of the assignment-of-claims proposal (eapil.org)
- Late Payment Regulation status (europarl.europa.eu legislative train)
- Estonian FIU and Finantsinspektsioon (fiu.ee, fi.ee)
- MiCA Recital 22 analysis (legalbison.com)
