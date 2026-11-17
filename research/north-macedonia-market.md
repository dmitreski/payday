# PayDay: North Macedonia market research

Market report 4 (after EU, UAE and USA). Written 17 November 2026 by Martino with Claude (claude.ai research chat). Replaces the quick check in [north-macedonia-check.md](north-macedonia-check.md).
Not legal advice. Anything marked ⚖️ needs a Macedonian lawyer. Costs and break-even are our estimates. Re-check before deciding.

**Legend:** ✅ = verified in a source (date given) · 🔶 = estimate or our inference · ⚠️ = conflicting or weak source · ❓ = not found

---

## Short version

North Macedonia is the right place for **phase 2 (real people, real invoices, test money)** and the wrong place for PayDay's **first real-money, stablecoin-settled launch**. Croatia stays market #1.

- **Verdict:** Use North Macedonia as the home test ground now. A small real-money pilot here is only realistic in **fiat (MKD/EUR through a bank)**, with a **licensed Macedonian financial company as the buyer of the invoices** and PayDay as the software and on-chain record layer. Stablecoin settlement should wait for the MiCA-style crypto law, which is still not adopted.
- **Law:** Buying invoices as a business is "factoring". Under the Law on Financial Companies only a Ministry of Finance-licensed financial company (or a bank) can do it. Since the July 2023 amendments, that licence needs about **€500,000 (MKD 30 million) of capital**, plus an economist and a lawyer on staff. Out of reach for four founders, so the partner route is the only route.
- **Timing:** e-Faktura is the big long-term advantage. It is still a **draft law** as of November 2026: voluntary since 1 October 2026, mandatory for VAT payers from **1 April 2027** if adopted. Once live, every B2B invoice gets a tax-office ID, the best "is this invoice real?" check PayDay could ask for. Revisit North Macedonia as a real-money market in **mid-2027**.

| Question | Answer |
|---|---|
| Can PayDay work here? | Yes as a test ground; yes as a fiat partner pilot; not yet as a stablecoin marketplace |
| Phase 2 test ground? | **Yes, best option.** You are local, SMEs are reachable, test money needs no licence |
| First real-money market? | **No, not first.** Possible as a small fiat partner pilot from H2 2027 |
| Should the ranking change? | Croatia #1, UAE #2, USA #3 stay. North Macedonia enters as **#1 for phase 2** and **#4 for real money**, with clear upgrade triggers |

---

## 1. Verdict and comparison

### Can PayDay work in North Macedonia?

**Phase 2 (test with real people, test money): Yes, now.**
- No law stops a testnet with test USDC/EURC shown to SMEs, their clients and investors. No real money changes hands, so no factoring, payment or crypto licence is triggered. 🔶
- You are in Prilep and can meet SMEs face to face. That is worth more than any legal advantage elsewhere.
- Don't let anyone pay real money "just to try it". The moment a real investor buys a real invoice for real money, you are in factoring law.

**Phase 4 (real money): Only in a narrow form.**
- **Who buys:** a licensed financial company (or bank), not retail investors directly.
- **Money:** MKD or EUR through bank accounts, not stablecoins.
- **Chain:** the Avalanche contract is the **record** of who holds the invoice and its status. It does not move the money yet.
- **When:** after e-Faktura becomes mandatory (planned 1 April 2027) and after a lawyer's opinion.

**Why not stablecoins now?**
- There is **no crypto law** yet. Virtual assets are only covered by the AML law of July 2022. ✅
- The National Bank (NBRM) says crypto issuance, investing and trading are **not regulated** under the foreign exchange law; that doesn't make them illegal, but they aren't regulated. ✅ (NBRM Q&A)
- Banks must still apply FX and AML rules to any crypto-related payment. Expect friction on fiat on/off-ramps. 🔶

### How does it compare?

| | North Macedonia | Croatia/EU | UAE | USA |
|---|---|---|---|---|
| Best use | Phase 2 testing; later small fiat pilot | First real-money market | Second market, licensed partner | Capital source ("US capital, EU assets") |
| Biggest plus | You live here; e-Faktura coming | EU law, MiCA, EURC + SEPA, HANFA factors | Clear crypto regimes (ADGM/DIFC) | Deep investor pool |
| Biggest minus | No crypto law; €500k licence; small market | Need Croatian partner | Cost, distance | Securities law complexity |

**Ranking decision:** Keep Croatia #1. Add North Macedonia as **"phase 2 home base"** (#1 for testing) and **#4 for real money**.

**Upgrade triggers** (if 2 of these 3 happen, move North Macedonia up to #2 for real money):
1. The e-Invoicing Law is adopted and mandatory phase 1 starts (planned 1 April 2027).
2. A MiCA-aligned crypto-asset law is adopted with a clear stablecoin regime.
3. A licensed Macedonian financial company signs a pilot agreement with you.

---

## 2. Factoring law in detail

### The law

- **Law on Financial Companies** (Закон за финансиските друштва). The Ministry of Finance (MoF) licenses and supervises financial companies. ✅
- Regulated activities include **granting loans, issuing credit cards, factoring and issuing guarantees**. ✅ (Mondaq FinTech guide)
- Banks do factoring under the Banking Law, supervised by the NBRM. ✅
- **No separate factoring law.** The 2023 amendments added detailed factoring rules into the Law on Financial Companies. ✅

### What the 2023 amendments changed (in force July 2023)

| Topic | Rule | Status |
|---|---|---|
| Minimum capital | Raised from **€100,000 to €500,000** (MKD 6m → MKD 30m) | ✅ Economic Chamber, 5 Feb 2025 |
| Capital source | Cannot come from loans/credits | ✅ (press, faktor.mk) |
| Staff | Must employ an **economist and a legal expert**; at least two employees; manager employed by the company | ✅ Economic Chamber; press |
| Definition of factoring | A financial company (the "factor") buys eligible receivables of a domestic or foreign legal entity under a written or electronic contract | ✅ amending law text |
| Types | Domestic / international; **with recourse, without recourse, reverse factoring** | ✅ Art. 19-б |
| With recourse | Seller guarantees the debtor will pay; factor can claim from seller plus interest and costs | ✅ Art. 19-в |
| Without recourse | Factor takes the full collection risk | ✅ Art. 19-в |
| Reverse factoring | Needs creditor's consent (or creditor accepts factor's payment without objection) | ✅ Art. 19-в |
| Name protection | "Financial company" and "factoring" can't be used in a company name without an MoF licence | ✅ Art. 6(2) |
| Price list | Each company must publish its fee tariff on its website | ✅ |
| Sanctions | Fines about €8,000–10,000; licence revoked after two measures in one year | ✅ press |
| Transition | Existing companies had 12 months to comply | ✅ |

**Effect on the market:** financial companies fell from **35 in 2022 to 27** after the amendments; their share of financial system assets is only **1.1%**. ✅ (Economic Chamber, 5 Feb 2025)

**Same direction elsewhere:** the new Law on Financial Leasing (Official Gazette 148/2026, in force 6 July 2026) raised leasing capital fivefold to **MKD 30m**. ✅ (LB Law). The MoF is tightening non-bank finance, not loosening it.

### Who needs a licence on a marketplace? ⚖️

The most important legal question for PayDay.

| Actor | Our reading | Confidence |
|---|---|---|
| **PayDay (software, never holds money, never buys invoices)** | Probably no factoring licence, as long as it doesn't buy receivables, hold client money or call itself a "factoring" company | 🔶 medium |
| **Investors who buy invoices regularly as a business** | Likely doing "factoring" → must be a licensed financial company or bank | 🔶 medium-high |
| **One-off buyer of a single claim (cesija)** | Ordinary assignment under the Law on Obligations is a separate route; occasional, non-business purchases probably aren't "factoring" | 🔶 low-medium ⚖️ |
| **The SME seller** | No licence needed to sell its own invoice | 🔶 high |

**Conclusion:** a marketplace where many private investors buy invoices again and again would almost certainly be treated as unlicensed factoring. Safe structure: **a licensed financial company is the buyer** (funded from its own capital, bank loans or professional co-investors behind it), and PayDay supplies the software.

**Crowdfunding / P2P is not an escape route yet.** Crowdfunding/P2P intermediation is described as **unregulated** ✅ (Mondaq), but buying receivables is still factoring. The MoF is drafting a crowdfunding framework (UNDP, 18 May 2026) ✅. It may offer a licensed route for platforms later. Watch it.

### Own licence: conditions, cost, timeline

| Item | Figure | Status |
|---|---|---|
| Minimum capital | MKD 30,000,000 ≈ **€487,000–500,000**, paid in cash, not borrowed | ✅ |
| Staff | Manager + economist + lawyer (min. 2 employees) | ✅ |
| Documents | Founding act, proof of capital on a temporary account, source of funds, identity and clean record of founders, business plan | ✅ (2019 draft law text) |
| Licence fee | Set by MoF rulebook; amount not confirmed | ❓ ⚖️ |
| Decision time | Not confirmed; plan for 3–6 months | 🔶 |
| Realistic all-in first year | **€700k–1M** (capital + team + legal + systems) | 🔶 |

### Possible licensed partners

**Financial companies licensed for factoring** (MoF register, probably 2023–2024 version; check the live register) ✅:

| Company | Town | Licence date | Note |
|---|---|---|---|
| Factor Trust (Фактор Траст) DOOEL | Skopje | 17.06.2011 | Oldest dedicated factoring company |
| **Cemak-Krediti (ЦЕМАК-КРЕДИТИ) DOO** | **Prilep** | 05.02.2016 | Local to you; credits + factoring |
| Peon DOO | Strumica | 12.07.2013 | |
| M Cash Macedonia DOOEL | Skopje | 30.10.2014 | |
| Interfinance DOOEL | Skopje | 29.01.2015 | |
| Monimax Finansisko DOOEL | Ohrid | 14.09.2015 | |
| Mint SN DOO | Bitola | 14.12.2016 | Publishes a factoring page |
| Finansiski Kreditni Centar BS | Skopje | 26.09.2017 | Largest capital (MKD 288m) |
| EAZU Fajnans AD | Skopje | 07.06.2018 | |
| Smart Kredit DOOEL | Radoviš | 27.09.2019 | |
| Faktor In DOO | Skopje | 23.01.2020 | |
| Premium Fajnans, Select Fajnans, Kredo Kard, Moj Kredit, Solidus | Various | 2020–2022 | |

Euro MK was in a 2016 register but not the later one; it may no longer be licensed. ⚠️

**Banks and state players** ✅:
- **Development Bank of North Macedonia (РБСМ/MBDP)**, state-owned: domestic and export factoring. Domestic factoring at **3.2% a year** on an 80% advance (actual days), max 180 days. A 0.25% management fee appeared in one snippet but isn't confirmed. ⚠️ Needs 1 year of financials and receivables insurance on the buyer.
- **Sparkasse Bank:** domestic factoring, including without recourse; no public price.
- Komercijalna, Stopanska, NLB, Halkbank, ProCredit, UniBank: no factoring product page or pricing found. Ask them directly.

**Best first partner candidates:** Cemak-Krediti (Prilep, local trust), Factor Trust (factoring specialist), Faktor In (newer, maybe more open to tech), MBDP (state bank, may like an e-Faktura-linked pilot).

### Recourse vs non-recourse in practice

- Both are legal. ✅
- MBDP's 2025 annual report says it does factoring **with recourse** on export and domestic receivables. Sparkasse offers **without recourse** versions. ✅
- Small non-bank factors usually prefer recourse because they can't absorb losses. 🔶
- **For PayDay:** today's rule ("investor takes the loss") is non-recourse. A licensed partner will likely want **recourse to the SME** or a **first-loss reserve**. Plan for both modes.

### Assignment of receivables (Law on Obligations)

| Question | Rule | Source |
|---|---|---|
| Can an invoice be assigned? | Yes, unless prohibited by law, personal to the creditor, or by its nature not transferable | ✅ Art. 424 |
| Debtor's consent needed? | **No.** But the seller must **notify** the debtor | ✅ Art. 426 |
| Same invoice assigned twice? | The claim belongs to the buyer **the debtor was notified about first**, or who first contacted the debtor | ✅ Art. 427 |
| Documents | Seller must hand over the debt documents and evidence | ✅ Art. 429 |
| Seller liable if the debtor doesn't pay? | Only if agreed, and only up to what the seller received | ✅ Art. 431 |
| Anti-assignment clause in the sale contract | Effect unclear from our sources | ❓ ⚖️ |

**What this means for PayDay:**
- **Notice to the debtor wins a double-sale fight.** Not the token, not the blockchain.
- Good news: PayDay's **client confirmation** step can double as the legal **notice of assignment**, if the wording is right. ⚖️
- **Confidential (silent) factoring is weak here.** Dropping S4 was the right call.
- **Owning the token ≠ owning the debt** unless the terms say token transfer = assignment and the debtor is told who to pay. ⚖️

### Registry

- No public registry of receivables assignments found. 🔶
- The Central Registry runs a pledge register for movable assets and rights. Whether a sale of receivables can or should be recorded there is unclear. ⚖️
- In practice: **debtor notice + e-Faktura invoice ID + PayDay's on-chain record** are the three layers. 🔶

---

## 3. Crypto, stablecoins, tokens and other rules

### Crypto law status (November 2026)

| Item | Status |
|---|---|
| Dedicated crypto / MiCA-style law | **Not adopted.** Expected to align closely with MiCA; drafts may come during 2026 and first licences "could" follow, subject to Parliament. No draft text found. ⚠️ (CEE Legal Matters) |
| AML/CFT law | Published 4 July 2022: defines virtual assets (as property), VASPs, crypto wallets, crypto ATMs; cash trading capped at €500; FIU (УФР) is the AML supervisor; privacy coins and mixers banned ✅ |
| Criminal Code | Proposal to name crypto explicitly as "property" for confiscation ✅ (faktor.mk) |
| NBRM position | Not regulated under FX law; not illegal. Stablecoins (asset-referenced tokens) treated as **financial assets** in FX classification ✅ |
| Old NBRM 2017 warning | Treated crypto like foreign securities; later softened. Many sites still say "crypto banned"; that's out of date ⚠️ |

### Foreign exchange: can residents use USDC/EURC?

- The Law on Foreign Exchange Operations governs payments between residents and non-residents and investing abroad. ✅
- Residents can invest in foreign securities only through authorised intermediaries. ✅ (Multilaw)
- NBRM classifies stablecoins as **financial assets/investments**, not payment-type assets. ✅ So a resident buying USDC/EURC may count as a **capital account investment abroad**. ⚖️
- Payments between residents are normally in **denars**. Paying a resident SME in USDC/EURC for a domestic invoice is a grey area at best. ⚖️ 🔶
- **Practical conclusion:** don't settle Macedonian invoices in stablecoins until a lawyer says yes. Use MKD/EUR bank transfers through the licensed partner.

### Securities law: is an invoice token a security?

- Big change: the **Financial Instruments Act** and the **Prospectus and Transparency Obligations Act** apply from **1 October 2026**, and a **Capital Market Supervisory Authority** replaces the Securities and Exchange Commission. ✅ (LB Law; one law-firm source, confirm the official name) ⚠️
- A single invoice token, held by one buyer, not standardised and not freely traded, is less likely to be a "transferable security". 🔶
- A pool token (investor pool with first-loss reserve, S3) looks much more like a collective investment or security. 🔶 ⚖️
- **Rule for now:** one invoice = one holder = one token. No fractional or pool tokens in North Macedonia.

### Payment services law

- **Law on Payment Services and Payment Systems** (Official Gazette 90/22, amended 64/24, 37/25, 144/25), in force since 1 January 2023, aligned with PSD2. ✅ (NBRM)
- Payment institution initial capital: **MKD 3.1m for payment initiation; MKD 7.8m for other payment services**. ✅ (NBRM, Jan 2023)
- **Does PayDay trigger it?** If PayDay never holds funds and the contract sends money straight from the client to the holder, PayDay probably isn't "executing payment transactions" for others. 🔶 If PayDay ever collects fiat for others, or can upgrade the contract, that changes. ⚖️
- In a fiat partner pilot, **the licensed factor and its bank** handle the money. PayDay stays out of the flow.

### AML

- The financial company partner is an "obliged entity" and does KYC/KYB. ✅ (Moneyval 2023)
- If PayDay later offers crypto exchange or custody, it becomes a VASP under the AML law and must register with the FIU. ✅
- Build KYB now anyway: every wallet tied to a real company with an EMBS/EDB number. 🔶

### Data protection

- Personal Data Protection Law, aligned with GDPR (2020). 🔶 (not re-verified)
- Invoices hold company data but also names, emails and sometimes personal data of sole traders.
- **Public on-chain payment history is a problem.** Blockchain data can't be erased. Put only hashes and invoice IDs on-chain; keep names and amounts off-chain. ⚖️

---

## 4. e-Faktura in depth

### Status (17 November 2026)

| Date | What | Status |
|---|---|---|
| 5 Jan 2026 | Pilot phase starts (testing) | ✅ |
| 4 Jun 2026 | Third pilot phase | (earlier check) |
| Aug 2026 | Draft Law on Electronic Invoicing published on ENER | ✅ (Sovos, EY, RTC Suite) ⚠️ one source says March 2026 |
| **1 Oct 2026** | **Voluntary** registration and use | ✅ (draft) |
| **1 Apr 2027** | **Mandatory** for VAT-registered taxpayers, incl. state/municipal companies | ✅ (draft) |
| 1 Jul 2027 | Mandatory for non-VAT-registered businesses | ✅ (draft) |
| 1 Oct 2027 | Budget users, non-profits, the National Bank | ✅ (draft) |
| 1 Jan 2028 | All remaining entities | ✅ (draft) |

- **Still a draft.** As of 5 November 2026, a Macedonian e-invoicing provider says mandatory dates apply only if the law is adopted. ✅ (invox.mk). No adoption found in the Official Gazette.
- ⚠️ Many vendor sites still say "mandatory from 1 October 2026". That date moved. Don't repeat it to SMEs.
- Fines in the draft: up to **€10,000**. ✅ (denar.mk)

### Technical design (draft and UJP material)

- **Clearance model:** an invoice is valid only after UJP validates it in real time. ✅
- Format: **UBL 2.1 XML**, signed with a **qualified electronic signature (QES)**. ✅
- After validation: **unique invoice ID + electronic timestamp**. ✅
- Integration by **API** for software, plus a web portal for small firms. ✅
- Scope: B2B and B2G non-cash invoices, credit/debit notes, advance invoices, invoices to foreigners, construction interim statements. ✅
- **Out of scope:** cash (fiscal-receipt) transactions and **VAT-exempt banking and financial supplies**, so factoring invoices themselves aren't in the system. ✅
- **Third-party access:** not described anywhere we found. ❓
- **Payment status reporting:** not described anywhere we found. ❓

### How PayDay could use it

| Check | How | Needs |
|---|---|---|
| Invoice is real | SME uploads e-Faktura XML; PayDay checks the UJP ID, signature and timestamp | The UJP-validated XML (the SME has it) |
| Invoice not changed | Hash the XML; store hash on-chain | Nothing extra |
| Not sold twice on PayDay | One UJP invoice ID → one token; contract rejects duplicates | Nothing extra: **do this now** |
| Not sold twice elsewhere | Not possible from e-Faktura alone, unless UJP or a registry records assignments | ⚖️ + talk to UJP |
| Client confirmed | Debtor also gets the e-invoice via UJP; PayDay email-link confirmation adds "undisputed + notified" | Confirm-by-email feature |
| Credit notes | Watch for credit notes against the same invoice ID (they reduce the claim) | API or SME upload |

**Compared with Croatia's Fiskalizacija 2.0:** both are real-time models with a tax-office ID. Croatia is ahead and inside the EU framework; North Macedonia's API is newer and the law still a draft. The **same design** (invoice ID → token, hash on-chain) works in both. Build it once.

---

## 5. Market size and pain

### SMEs

- SMEs are about **73% of employment and 67.5% of value added**. ✅ (OECD SME Policy Index 2026, 11 June 2026)
- 14% of firms name access to finance as their top constraint; SMEs face higher barriers than large firms; banks ask for too much information. ✅ (ILO study, date unclear)
- OECD notes B2B payment-delay data is a gap in official statistics. ✅

### Late-payment pain

| Indicator | Figure | Source/date |
|---|---|---|
| Max private B2B payment term | **60 days**; up to **120 days** only with explicit written consent of both parties | ✅ Law on Financial Discipline (UJP text) |
| Public sector as debtor | 60 days (90 for multi-year procurement); proposal to cut to 30/60 | ✅ Economic Chamber (date/adoption not confirmed) |
| Companies with blocked bank accounts | **15,331** | ⚠️ biznismreza.mk, 1 Oct 2026 (private aggregator) |
| Main reason for blocks | Unpaid obligations to suppliers | ⚠️ same |
| Government late payment | Businesses report late payment by central and municipal government | ✅ US Commerce Country Guide |
| Late interest | Set each half-year at 8 or 10 points above the NBRM reference rate; also acts as a de facto interest-rate cap | ✅ IMF Country Report 2024/027 |

🔶 The legal limit is 60 days, but blocked accounts show many firms simply don't pay on time. PayDay's "cash in days" pitch fits.

### Factoring market

- MoF (2022): factoring is about **10% of GDP in the EU** and **undeveloped** in North Macedonia. ✅
- Financial companies hold **1.1%** of financial system assets ✅ (Economic Chamber, 2025); Moneyval counted 32 financial and 7 leasing companies at about 1.5% ✅ (2023).
- Old data: financial companies' factoring portfolio was about **€1.5m** (~2016). ⚠️ outdated
- No recent factoring volume from NBRM or FCI. ❓
- 🔶 Estimate: domestic factoring is a few tens of millions of euros a year at most, mostly banks and MBDP. Order of magnitude only.

### Pricing

| Provider | Price | Note |
|---|---|---|
| MBDP domestic factoring | **3.2% a year** on the 80% advance (actual days); 0.25% fee unconfirmed | State-subsidised, strict eligibility, max 180 days ✅ |
| Commercial banks | Not published | ❓ |
| Financial companies | Must publish tariffs; not collected | ❓ |
| Textbook example | 3% for first 30 days + 1% per 10 days | ⚠️ academic |
| Factoring commissions | Subject to 18% VAT | ⚠️ academic ⚖️ |

**Key insight:** PayDay's demo example (1,000 → 960, 4% discount) on a 30–45 day invoice is roughly **33–50% a year**. That's far above MBDP (~3.5%) and a bank loan. 🔶 It only works for SMEs that can't get MBDP or bank money. Target cost to the SME: **12–18% a year** (about 1.5–2.2% for 45 days).

### Competitors and partners in the region

- North Macedonia: no invoice-trading or factoring fintech found. The US State Department (2025) says alternative financial services don't exist there. ✅
- Serbia, Croatia, Slovenia, Bulgaria: not researched this round. ❓ (Serbia keeps a public register of factoring companies at APR ✅.)

### Investor pool

- No new data on pension or investment fund assets. ❓ 🔶 The local professional investor pool is small; diaspora and regional (Croatia/Slovenia) investors matter more.

---

## 6. Investors

### Who can legally invest

| Investor | Can they buy invoices? |
|---|---|
| Licensed financial company / bank | Yes ✅ |
| Professional co-investors **lending to** or **investing in** the licensed factor | Probably yes (normal corporate funding) 🔶 ⚖️ |
| Retail individuals buying invoices directly and repeatedly | Probably not without a licence or a future crowdfunding regime 🔶 ⚖️ |

### Returns they compare with

| Product | Rate | Date |
|---|---|---|
| NBRM policy rate | **4.25%** (deposit facility 3.75%, lending facility 4.75%) | ✅ held Jul, Sep and Nov 2026 |
| Inflation | 2.7% | ✅ Sep 2026 |
| Average household deposits (all / new) | **2.12% / 2.69%** | ✅ Sep 2026 |
| Term deposit 25 months | 2.90% MKD / 1.70% EUR | ✅ Oct 2026 example |
| Term deposit 40 months | 3.60% MKD / 2.30% EUR | ✅ Oct 2026 example |
| Government bonds on MSE | **4.60%** and **5.20%** (15-year) | ✅ 28 Oct 2026 |
| 3-month Euribor | 2.63% | ✅ Oct 2026 |

**Is ~12% a year attractive?** Yes, about **7–9 points above** deposits and government bonds. 🔶
**Is it realistic?** Only after losses. 2% defaults with half recovered → about 11% net. 5% defaults → 9–10%. 🔶 A licensed factor will also take part of the margin.

---

## 7. Company setup, tax and costs

### Company

- DOO/DOOEL (LLC) is the normal form. Minimum capital about **€5,000** ⚠️ (formation agency source) ⚖️ confirm.
- Registration through the Central Registry one-stop shop: usually a few days. 🔶
- Corporate profit tax: **10%** flat. 🔶 (not re-verified)
- VAT: 18% standard. VAT-exempt financial services are outside e-Faktura. ✅

### Tax treatment ⚖️

| Question | Our reading |
|---|---|
| Sale of an invoice: sale or loan? | With recourse it may be treated like financing; without recourse, a true sale. Ask lawyer + accountant |
| VAT on factoring fees | Commissions may carry 18% VAT; the discount (interest-like) may be exempt ⚠️ |
| VAT on PayDay's software fee | Likely 18% if PayDay is VAT-registered 🔶 |
| Investor profit tax | Legal entities: 10% profit tax. Individuals: personal income tax on capital income 🔶 |
| SME accounting | Recourse sale may stay on the balance sheet; non-recourse sale removes the receivable 🔶 |

### What it costs the founders

| Stage | What you get | Rough cost (EUR) | When |
|---|---|---|---|
| **Scrappy start** | DOOEL in Prilep, accountant, first lawyer memo on "is PayDay software only?", phase 2 tests with test money | **€3,000–8,000** 🔶 | Dec 2026 – Mar 2027 |
| **Stage 0 / foundation** | Full legal opinion (factoring, assignment, FX, securities, GDPR), terms, privacy policy, KYB tool, e-Faktura integration, light contract review | **€25,000–60,000** 🔶 | Q1–Q3 2027 |
| **Partner pilot** | Agreement with a licensed financial company; fiat via its bank; audit; small limits (e.g. €50k–200k of invoices) | **€60,000–150,000** 🔶 | From Q3 2027 |
| **Own licence** | Financial company licence: €500k capital + staff + systems | **€700,000–1,000,000** first year 🔶 | Not before 2028 |

- **Break-even:** with €100–150k/year running costs and a 1% fee, you need **€10–15M of invoices a year**. 🔶 Large next to today's Macedonian factoring market, so North Macedonia alone won't make PayDay profitable. It's a stepping stone to Croatia/EU.
- **Time to first real money:** about **9–12 months** (Q3–Q4 2027) via a partner. 🔶

---

## 8. Support ecosystem

| Who | What | Status |
|---|---|---|
| **Fund for Innovation and Technology Development (FITD/ФИТР)** | "Startapuvaj" co-financed grants for start-ups and spin-offs; latest round awarded **€2.3m** | ✅ (round date not confirmed) |
| EU Growth Plan / Reform and Growth Facility | North Macedonia received **€140m**; called a top performer | ✅ Oct–Nov 2026 |
| VEZILKA "AI Factory Antenna" | EU computing access for start-ups | ✅ Oct 2026 |
| Economic Chamber, Group of Non-Banking Financial Companies | Represents the **20 largest of 27** financial companies (74% of market) | ✅ Feb 2025: a door to partners |
| UNDP + MoF crowdfunding framework | Drafting | ✅ May 2026 |
| EBRD, WB EDIF, EIC, Avalanche team1 | Not researched this round | ❓ |
| NBRM/MoF sandbox | None found | ❓ |

---

## 9. Collections and defaults

- Unpaid trade debt: notary **payment order**; debtor has **8 days** to pay or object. 🔶 (earlier check, not re-verified)
- Then private enforcement agents (извршители). 🔶
- OECD 2026: North Macedonia scores **2.81** on bankruptcy and second chance (down from 3.03, below the regional 2.97). ✅
- 15,331 companies have blocked accounts. ⚠️

**What it means for PayDay's default rule (E5):**
1. **Who chases:** the licensed factor (it owns the claim). PayDay only shows status.
2. **Default trigger:** due date + grace period (e.g. 15 days), then notary payment order.
3. **Who takes the loss:** in phase 4, **recourse to the SME** plus a small **first-loss reserve**.
4. **Screen out blocked debtors:** check the client's account status before listing. 🔶

---

## 10. EU accession

- The Commission's 2026 report (4 November 2026): work continued on the opening benchmarks for the fundamentals cluster, but the constitutional amendments still aren't adopted. **Cluster 1 is not open.** ✅
- 🔶 Membership before the early 2030s is unlikely. Don't plan around EU passporting from Skopje.
- Alignment still happens: PSD2 law (2022) ✅, new capital-market laws (2026) ✅, crowdfunding drafting ✅, MiCA-style law planned.
- **Can a Macedonian base serve Croatia/EU?** For software, yes. For regulated activity, no: you need the Croatian partner or an EU licence. 🔶
- **Recommended structure:** Macedonian DOOEL = dev team and phase 2; Croatian d.o.o. = EU-facing company.

---

## 11. Practical plan

### Recommended structure

```
Prilep DOOEL (PayDay tech) ──software licence──► Licensed MK financial company (buys invoices)
       │                                                   │
       │ on-chain record (Avalanche)                       │ MKD/EUR bank transfers
       ▼                                                   ▼
 Invoice token = UJP e-Faktura ID + hash        SME seller ◄── pays ── Client (notified)
```

### Next steps

**Phase 2 (now – March 2027)**
1. Register the DOOEL. Get an accountant.
2. Book a 1-hour paid consult with a fintech lawyer in Skopje (questions below).
3. Recruit 3 SMEs from Prilep (ideally suppliers to larger firms). Run test-money trades.
4. Add: one e-Faktura ID → one token; reject duplicates.
5. Build confirm-by-email-link with notice-of-assignment wording.
6. Remove any admin power to move/burn/reassign tokens. Pause only stops new listings.
7. Apply to FITD's next start-up call.

**Phase 3 (Q1–Q3 2027)**
1. Meet Cemak-Krediti, Factor Trust, Faktor In and MBDP. Offer a free pilot.
2. Get the full legal opinion.
3. Integrate with UJP e-Faktura once mandatory (planned 1 April 2027).
4. Light smart-contract audit.

**Phase 4 (from Q3 2027)**
1. Fiat-only pilot with a licensed partner; limits €50k–200k.
2. Measure days-to-cash vs. 30–60 days.
3. Re-check the crypto law and the Croatian launch.

### Risks

| Risk | Mitigation |
|---|---|
| Treated as unlicensed factoring | Partner buys; PayDay never buys or holds funds |
| FX breach with stablecoins | Fiat only in MK |
| e-Faktura law delayed | Start with SME-uploaded e-invoices |
| Partner pricing too low (MBDP) | Target SMEs MBDP won't serve |
| Personal data on-chain | Hashes only |
| Small market | Use MK as a stepping stone to Croatia |

### Who to contact

- **Ministry of Finance**, Financial System Department (licensing)
- **NBRM** (payments and FX questions)
- **UJP** (e-Faktura API)
- **FIU (УФР)**, only if crypto services are offered
- **Capital Market Supervisory Authority** (formerly SEC)
- **Partners:** Cemak-Krediti (Prilep), Factor Trust, Faktor In, MBDP, Sparkasse
- **Economic Chamber** group of non-bank financial companies
- **FITD**
- **Skopje law firms with fintech experience:** Karanović & Partners, DDK, LB Law, firms in the Mondaq/Multilaw guides

---

## Updated comparison table

| | EU (Croatia) | UAE | USA | **North Macedonia** |
|---|---|---|---|---|
| Can it work? | Yes, with a licensed partner | Yes, with a licensed partner | Yes, with 3 partners | Yes for testing; fiat partner pilot later |
| Where to start | Croatian d.o.o. + HANFA factor | Free-zone tech company | "US capital, EU assets" | Prilep DOOEL + licensed MK financial company |
| Who legally buys invoices | HANFA-licensed factor | FSRA/DFSA platform or CBUAE bank | US factor or Reg D SPV | MoF-licensed financial company or bank |
| Who can invest | Professional investors | Professional Clients | Accredited investors | The licensed factor; professional funders behind it |
| Settlement | EURC + SEPA | AED fiat via partner first | Dollar ACH/wire first | **MKD/EUR via banks** (no stablecoins yet) |
| Legal transfer / registry | Assignment + debtor notice | Factoring Law + collateral registry | UCC-1 + Article 12 | Assignment + debtor notice (Art. 426–427); no assignment registry found |
| Scrappy start | €10–20k | USD 15–30k | $0–5k | **€3–8k** 🔶 |
| Stage 0 | €40–90k | USD 50–100k | $50–120k | **€25–60k** 🔶 |
| Partner pilot | €100–200k | USD 120–250k | $100–250k/yr | **€60–150k** 🔶 |
| Own licence | €250–500k | USD 350–700k/yr | $0.5–3M+ | **€700k–1M** (€500k capital) |
| Break-even (1% fee) | ~€15M/yr | USD 35–70M | ~$25M | **€10–15M/yr** 🔶 |
| Time to first real money | ~9–12 months | ~9–15 months | 12–18 months | **9–12 months** (Q3–Q4 2027) 🔶 |
| Market size | EU factoring €2,164bn; Croatia €1.9bn | ~557k SMEs | US factoring ~€156bn | Small; factoring undeveloped |
| Late-payment pain | Avg B2B ~60 days | 30–60+ days | ~22% paid late | **High** (60-day cap often ignored; 15,331 blocked accounts ⚠️) |
| Biggest advantage | Mandatory e-invoicing; close; EU grants | Licence written for invoice platforms | Investor pool; Article 12 | You live here; e-Faktura coming |
| Biggest blocker | Unlicensed-factoring risk; MiCA | 5 regulators; residency | Securities law | No crypto law; €500k licence; FX rules |
| Team fit | Best | Medium | Weakest | **Very high** |
| Rank | **1** | **2** | **3** | **#1 for phase 2; #4 for real money** |

---

## What changes in the Brain / roadmap

| Epic | Change |
|---|---|
| E1 Money in stablecoins | In MK: MKD/EUR via the partner's bank; no stablecoin settlement |
| E2 Trust in the invoice | Enforce **one e-Faktura ID = one token**; hash the UJP XML on-chain; watch credit notes. Move e-Faktura from "Could, phase 3" up to **now** (voluntary since 1 Oct 2026) |
| E3 Company identity | Link every wallet to an EMBS/EDB number |
| E4 Easy for the client | Email-link confirmation doubles as **legal notice of assignment** (wording ⚖️) |
| E5 Late payment and default | Recourse to SME + first-loss reserve; notary payment order; screen out blocked debtors |
| E6 Fiat in and out | MK partner's bank; Circle Mint check is low priority for MK |
| E7 Contract safety | Remove move/burn/reassign powers; hashes only on-chain |
| E8 The app | Names and amounts off-chain (data protection) |
| E9 Test kit and dry run | Run the phase 2 dry run in Prilep |
| E10 Legal, licence, market | Licensed MK financial company as buyer; sale-vs-loan and VAT opinion; watch crypto and crowdfunding laws |

**Musts:**
- **Trust in the invoice:** stronger in MK once e-Faktura is mandatory.
- **Legal path:** licensed partner.
- **Default rule:** recourse to SME + reserve.
- **Client willingness:** confirmation = legal notice, which also protects the client from paying twice.
- **Proof of speed:** measure against 60-day terms.

---

## Open questions for a Macedonian lawyer ⚖️

1. Is PayDay (software, no money held) outside the Law on Financial Companies?
2. When does an investor's buying of invoices become "factoring"?
3. Can PayDay's client confirmation count as notice under Art. 426–427?
4. What's the effect of anti-assignment clauses?
5. Can token transfer = assignment?
6. Can sales of receivables be recorded in the Central Registry pledge register?
7. Can residents hold and pay with USDC/EURC? Is buying them an investment abroad?
8. Is an invoice token a financial instrument under the 2026 Financial Instruments Act?
9. Does non-custodial routing trigger the Payment Services Law?
10. VAT on factoring discount vs fee; sale vs loan for SME accounting.
11. GDPR-compliant on-chain design.
12. Status and timing of the crypto-asset and crowdfunding laws.

---

## Caveats

- e-Faktura dates come from a **draft law**.
- The crypto-law timeline is a **plan**, not law.
- The MoF register used may be out of date.
- The blocked-account count comes from a private aggregator.
- Costs and break-even are **our estimates**.
- Not re-verified this round: notary order timing, corporate tax, data protection details.

---

## Sources

- [Economic Chamber: non-banking financial companies (5 Feb 2025)](https://www.mchamber.mk/en/news/index/698)
- [Mondaq: North Macedonia FinTech Comparative Guide](https://www.mondaq.com/guides/results/10/1251/all/north-macedonia-fintech)
- [Multilaw: payment services](https://multilaw.com/Multilaw/ZENTSO/BusinessGuides/Presentation/Section_Home.aspx?GuideId=2&GuideCountry=North+Macedonia&GuideSection=427)
- [Multilaw: DLT and cryptocurrencies](https://multilaw.com/Multilaw/ZENTSO/BusinessGuides/Presentation/Section_Home.aspx?GuideId=2&GuideCountry=North+Macedonia&GuideSection=431)
- [LB Law: Financial Leasing Law 2026](https://lblaw.com.mk/en/financial-leasing-law-north-macedonia-2026/)
- [LB Law: Capital Markets 2026](https://lblaw.com.mk/en/north-macedonia-capital-markets-2026/)
- [Bloomberg Adria: new rules for financial companies](https://mk.bloombergadria.com/ekonomija/makedonija/18039/se-voveduvaat-novi-pravila-za-rabota-na-finansiskite-drustva/news)
- [Faktor.mk: financial companies down to 27](https://faktor.mk/grupacija-na-nebankarski-finansiski-drushtva--so-stapuvanjeto-na-sila-na-izmenite-od-juli-2023-godina-brojot-na-finansiski-drushtva-se-namali-na-27-)
- [MoF register of financial companies](https://portal.mdt.gov.mk/post-body-files/registri-finansii-file-TKFk.pdf)
- [Open data register (2016)](http://mkopen.org/entry/FHhHE992V+fuhqDIigC4Fw)
- [Mint SN factoring](https://krediti.com.mk/faktoring/)
- [Sparkasse factoring](https://www.sparkasse.mk/mk/business-clients/faktoring)
- [MBDP factoring](https://www.mbdp.com.mk/mk/Products/Faktoring)
- [Moneyval 2023 Mutual Evaluation](https://www.fatf-gafi.org/content/dam/fatf-gafi/fsrb-mer/N-Macedonia-Moneyval-Mutual-Evaluation-2023.pdf.coredownload.inline.pdf)
- [Law on Obligations (consolidated May 2025)](https://gazibaba.gov.mk/wp-content/uploads/2025/05/zakon-za-obligacionite-odnosi-konsolidirana-verzija-maj-2025.pdf)
- [Constitutional Court U.br.18/2021](https://ustavensud.mk/archives/21059)
- [NBRM: crypto and FX Q&A](https://www.nbrm.mk/ns-newsarticle-dali-e-legalno-vlozuvaneto-vo-kripto-sredstva-vo-stranstvo-i-kakov-tretman-imaat-ovie-transakcii-vo-platniot-promet-so-stranstvo-en.nspx)
- [NBRM: payment statistics](https://www.nbrm.mk/platiezhna_statistika-en.nspx)
- [NBRM: payment services licensing](https://www.nbrm.mk/content/Law-on-payment-services-and-payment-systems-and-licensing-procedure-for-PI-and-EMI.pdf)
- [DDK: Law on Payment Services](https://ddklaw.com.mk/law-payment-services-payment-systems/?lang=en)
- [Karanović & Partners: payment services legislation](https://www.karanovicpartners.com/news/important-development-in-the-payment-services-legislation-in-north-macedonia/)
- [FIU (УФР): AML law](https://ufr.gov.mk/?p=3087)
- [CEE Legal Matters: regulating crypto markets](https://ceelegalmatters.com/magazine-articles/10973-issue-12-12/32400-north-macedonia-a-path-toward-regulating-crypto-markets-licensing-legal-certainty-and-eu-alignment)
- [Faktor.mk: crypto in the Criminal Code](https://faktor.mk/kriptovalutite-vleguvaat-vo-krivichniot-zakonik-novi-pravila-i-za-odzemanje-imot-od-rodnini)
- [UNDP: crowdfunding regulation (18 May 2026)](https://www.undp.org/north-macedonia/blog/how-crowdfunding-regulation-can-empower-smes-north-macedonia)
- [Sovos: draft e-invoicing law (9 Sep 2026)](https://sovos.com/regulatory-updates/global-vat/north-macedonia-draft-law-on-e%E2%80%91invoicing/)
- [EY: draft law on mandatory e-invoicing](https://www.ey.com/en_mk/insights/tax/new-draft-law-introducing-mandatory-e-invoicing)
- [RTC Suite: phased mandate from April 2027](https://rtcsuite.com/north-macedonia-proposes-phased-e-invoicing-mandate-from-april-2027/)
- [Fiscal Requirements: phased rollout](https://www.fiscal-requirements.com/news/5923-north-macedonia-e-invoicing-draft-law-proposes-phased-mandatory-rollout-from-april-2027)
- [Denar.mk: draft law, central system and fines](https://denar.mk/347363/ekonomija/makedonija-ekonomija/makedonija-se-podgotvuva-za-efakturi-predlog-zakonot-nosi-centralen-sistem-fazno-voveduvanje-i-kazni)
- [Invox.mk: e-Faktura status (5 Nov 2026)](https://invox.mk/e-faktura)
- [Kimisuite: e-Faktura postponed](https://kimisuite.com/en/blog/e-faktura-macedonia-postponed)
- [UJP: Law on Financial Discipline](https://www.ujp.gov.mk/files/attachment/0000/0766/Zakon_za_finansiska_disciplina_215_07.12.2015.pdf)
- [MoF: Law on Financial Discipline (consolidated 2019)](https://arhiva.finance.gov.mk/wp-content/uploads/2009/02/Finansiska-disciplina-precisten-2019.pdf)
- [Economic Chamber: financial discipline amendments](https://www.mchamber.mk/mk/home/propisi_info/115)
- [OECD SME Policy Index 2026: North Macedonia](https://www.oecd.org/en/publications/sme-policy-index-for-western-balkans-and-turkiye-2026-economy-profile-for-north-macedonia_f8e57052-en.html)
- [ILO: barriers to finance for MSMEs](https://www.ilo.org/media/384401/download)
- [Biznismreza: blocked companies](https://biznismreza.mk/en/blokirani-kompanii/)
- [US Commerce: selling to the public sector](https://www.trade.gov/country-commercial-guides/north-macedonia-selling-public-sector)
- [US State Dept: 2025 Investment Climate Statement](https://www.state.gov/reports/2025-investment-climate-statements/north-macedonia)
- [Serbia APR: factoring register](https://www.apr.gov.rs/регистри/факторинг.1343.html)
- [Lider.mk: NBRM rate 4.25%](https://lider.mk/osnovnata-kamatna-stapka-ostanuva-4-25-otsto-narodnata-banka-ja-zadrzhuva-pretpazlivata-monetarna-politika/)
- [Faktor.mk: deposit rates](https://faktor.mk/shtedenje-vo-denari-ili-evra-kade-mozete-da-zarabotite-povekje-od-kamata-i-shto-treba-da-znaete-pred-da-gi-orochite-parite)
- [Biznisinfo: government bonds 4.60% and 5.20%](https://biznisinfo.mk/nova-mozhnost-za-investitorite-se-kotiraat-drzhavni-obvrznici-so-kamatni-stapki-od-460-i-520/)
- [Company formation Macedonia](https://companyformationmacedonia.com/open-a-financial-company-in-macedonia/)
- [Smartportal: FITD Startapuvaj 5](https://smartportal.mk/novosti/kompanii-institucii/startapuvaj-5/)
- [EEAS: 2026 country report, North Macedonia](https://www.eeas.europa.eu/delegations/north-macedonia/2026-enlargement-package-country-report-north-macedonia_en)
- [European Commission: North Macedonia 2026 Report](https://enlargement.ec.europa.eu/document/download/dfdfce41-4d0c-4369-97c8-3b106aeef6aa_en?filename=north-macedonia-report-2026.pdf)
- [Brussels Times (2 Oct 2026)](https://www.brusselstimes.com/eu-affairs/2343858/eu-urges-north-macedonia-to-take-pivotal-step-for-membership-talks)
- [MoF: factoring as a complementary mechanism (2022)](https://finance.gov.mk/%D1%84%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D0%B8%D0%BD%D0%B3%D0%BE%D1%82-%D0%BC%D0%B5%D1%85%D0%B0%D0%BD%D0%B8%D0%B7%D0%B0%D0%BC-%D1%88%D1%82%D0%BE-%D0%B4%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5/)
