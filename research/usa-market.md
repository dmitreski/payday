# PayDay: USA market research

Market report 3 of 3 (EU done, UAE done, USA done). Written 17 November 2026 by Martino with Claude (claude.ai deep research).
Not legal, tax or investment advice. US law changes fast and differs by state. Before handling real money, get a written opinion from US securities and fintech counsel. Cost figures are planning estimates. Re-check before deciding.

**Source labels used throughout:** [Regulator/Law] = primary source (SEC, FinCEN, OCC, CFPB, Treasury, DOJ, state legislatures, statute or UCC text). [Consultancy/Secondary] = law firm, vendor, news or market research. [Not re-verified] = general knowledge, not checked for this report.

---

## TL;DR

- **No. In the US, PayDay cannot run a real-money marketplace on its own without licensed partners. The US should be market 3: start it only after the EU pilot works, and the first US step should be "US capital, EU assets", not a US SME marketplace.** "Never touching the money" helps with money-transmission risk. It does not solve the main US problem: invoice interests sold to investors through a platform are very likely securities, and running that platform for a fee is broker-dealer activity. On top of that, states are now starting to license factoring (California from 2028, Vermont from July 2027).
- **The lightest legal US setup is "PayDay = software".** A US factoring company, or a Reg D 506(c) SPV, is the buyer of record. A registered broker-dealer or transfer-agent partner handles any investor-facing token. A bank, or a licensed stablecoin provider, handles USDC and fiat. The 2025 SEC no-action letter lets a 506(c) offering verify accredited investors through a minimum investment ($200,000 for individuals, $1M for entities). That suits an SPV, not small per-invoice tickets.
- **The US has one big legal advantage over the EU and UAE: UCC Article 12.** It has been in force in New York since 3 June 2026, and also in Delaware, California and others. The Uniform Law Commission's table as of 1 October 2026, as reproduced by the Wisconsin Digital Business Council, counts 36 states plus DC; Alston & Bird counted 33 jurisdictions in December 2025. A "controllable account" is an invoice where the debtor promises to pay whoever controls an electronic record. With it, the holder of an on-chain record can get legal ownership and top priority, but only if PayDay's admin keys cannot move or take the token. This is worth designing for now, even before entering the US.

---

## Short version

| Item | USA answer |
|---|---|
| **Verdict** | Feasible only with regulated partners. Make the US **market 3**: enter after the EU pilot, starting with "US capital, EU assets". Do not run a self-operated US marketplace. |
| **First state / jurisdiction** | Delaware C-corp (only when needed). SME pilot in Texas: big trucking and freight market, and its sales-based financing law does not generally reach classic invoice factoring. Avoid California and Vermont as first SME states (factoring licences come in 2028 and 2027). On-chain records designate New York or Delaware law under UCC §12-107. |
| **First structure** | PayDay licenses software to a US factoring company, OR a Reg D 506(c) SPV buys the invoices (buyer of record) and accredited investors buy SPV notes. PayDay takes a flat software fee, not a cut of each trade. |
| **Investors** | Accredited investors only (Reg D 506(c), verified). Non-US investors under Reg S. No retail. |
| **Settlement** | Fiat (ACH/wire) through the partner's bank. USDC only through a licensed provider (Circle, Paxos, Bridge, Zero Hash) once GENIUS Act rules apply (effective 18 January 2027). Never AVAX. |
| **Legal backbone** | UCC Article 9 (sale of accounts, UCC-1 filing, lien searches) + UCC Article 12 controllable accounts (control = ownership and priority) + E-SIGN/UETA debtor acknowledgment + true-sale (non-recourse) contracts. |

---

## Direct answers to the founders' questions

**"We don't touch the money. Can we be a marketplace in the US without a licensed partner?"**

No, not for real money. Here is the answer layer by layer:

| Layer | Does "not touching money" help? | Bottom line |
|---|---|---|
| **Securities (SEC)** | No. Securities law looks at what you sell and how you sell it, not who holds the funds. | Invoice interests sold to investors via a platform, with promised returns ("~17%/yr") and platform work (verification, servicing), are very likely securities. Fractional pieces almost certainly are. You need an exemption (Reg D) and usually a broker-dealer. |
| **Broker-dealer** | Partly. JOBS Act §4(b) exempts 506 platforms that don't hold customer funds **and** take no compensation tied to the sale. | A 0.5–1.5% fee per trade breaks §4(b). A flat software fee to a partner may not. |
| **Money transmission (FinCEN + states)** | Yes, a lot, if the contract never holds balances and PayDay holds no key that can move or freeze user funds. | Still risky with an emergency pause that can freeze funds held in the contract. Use direct wallet-to-wallet transfers or a licensed partner. |
| **State factoring/lending licences** | No. These licence whoever provides or brokers the financing. | California (licence required from 1 July 2028; unlicensed deals unenforceable from 1 January 2028) and Vermont (from 1 July 2027) now cover factoring. Brokers are covered too. |
| **Stablecoins** | Partly. | Using USDC is fine. Exchanging, transferring or holding it for others may need state licences (California DFAL since July 2026; NY BitLicense). |
| **AML/OFAC** | No. | OFAC sanctions rules apply to every US person and US company, licensed or not. |

**Conclusion:** A licensed partner is needed in the US, just as in the EU and UAE. The US partner stack is heavier: a securities partner, a factoring/lending partner and a payments partner.

---

## Cost table by stage (USD; estimates)

All figures are planning estimates from general market knowledge [Not re-verified]. "Spent" = money gone. "Locked" = capital that must sit in the business or in bonds.

| Stage | What you get | Spent (one-off + year 1) | Locked capital | Time |
|---|---|---|---|---|
| **Scrappy start** | No US entity. US-ready product design (Article 12, OFAC screening, KYB hooks). One paid hour with US counsel. Apply for Team1 grants. | $0–5k | $0 | 0–3 months |
| **Stage 0: foundation** | Delaware C-corp (Stripe Atlas/doola), registered agent, EIN, US bank account (if obtainable), US securities/fintech counsel memo, security audit (shared with EU) | $50–120k (counsel memo $15–40k; audit $30–80k; entity ~$1–3k) | $0 | 3–6 months |
| **Stage 1: partner pilot** | Software deal with a US factor, OR Reg D 506(c) SPV as buyer of record; KYC/KYB + OFAC vendor; UCC search/filing tools; fund admin; legal docs | $100–250k/yr | $0–100k first-loss or co-investment, if partners require it | 6–12 months |
| **Stage 2: own registrations** | Broker-dealer ($250k–1M first year + net capital), or FINRA funding portal ($100–300k); California CFL commercial licence (from 2028; bond required); state MTLs only if custodial (multi-state, $1–3M+) | $0.5–3M+ | Net capital, bonds, surety: $100k–1M+ | 12–24+ months |

**Break-even at a 0.5–1.5% platform fee:**
- Stage 1 run cost of about $250k/yr needs about **$17M (1.5%), $25M (1%) or $50M (0.5%)** financed per year.
- Stage 2 cost of about $1.5M/yr needs about **$100–300M/yr** financed.
- For comparison: EU break-even was about €15M/yr at 1%, and UAE was USD 35–70M/yr.

---

## 90-day next steps

1. **Weeks 1–2:** Make no US offers and sign up no US users. Add a geo-block, plus terms that exclude US persons, to the testnet demo for now.
2. **Weeks 1–4:** Redesign the contract for UCC Article 12 "control". The holder alone can transfer. There is no admin function that moves or reassigns tokens. The pause can only freeze new listings and cannot seize anything. Add a jurisdiction field (§12-107).
3. **Weeks 2–6:** Apply for a Team1 Mini Grant (up to $10k). Then aim for an Accelerator Grant (up to $30k, committee-selected).
4. **Weeks 4–8:** Book 1–2 hours with US fintech/securities counsel. Ask the open questions below.
5. **Weeks 4–10:** Have discovery calls with 5 US factoring companies (trucking/staffing) and 2 tokenisation platforms (e.g. Securitize, Figure) about a software or white-label deal.
6. **Weeks 8–12:** Write a "US capital, EU assets" term sheet: Croatian-partner invoices, US accredited investors via Reg D 506(c), EU investors via Reg S. Do not launch it until the EU pilot is live.

---

## Open questions for the team

1. Will we accept a flat software/subscription fee from a partner instead of a per-trade cut? This decides whether we need broker-dealer registration.
2. Can we remove every admin power that could move a user's invoice token? This decides Article 12 "control".
3. Who is the servicer that chases late payers: the partner factor, or us?
4. Is anyone willing and able to travel to, or later live in, the US? Visa route still to check.
5. Do we take on the US only after the EU pilot hits its exit criteria? (Recommended: yes.)

---

# Full report

## 1. Executive summary

The US is the largest single factoring market reachable for PayDay. FCI counted €156.5bn of US factoring in 2025, up 35.5% [Consultancy/Secondary: FCI statistics]. It also has the best legal tool for on-chain invoices: UCC Article 12.

But the US stacks three regulators on one invoice sale:
- the **SEC**, for selling investment interests;
- **states**, for factoring, lending and money transmission;
- **FinCEN/OFAC**, for AML and sanctions.

The federal mood under SEC Chair Atkins is friendlier to crypto than in 2021–2024. Still, none of the 2026 SEC measures creates an exemption that fits a receivables marketplace:
- the March 2026 SEC/CFTC taxonomy;
- the proposed Regulation Crypto Assets (August 2026);
- the September 2026 "Innovation Exemption".

The CLARITY Act stalled in the Senate.

At the same time, states are moving the other way. California and Vermont now bring factoring itself under licensing.

**Recommendation:** USA = market 3. First US step = let US accredited investors fund EU invoices through a Reg D/Reg S vehicle ("US capital, EU assets"). Second step = a US SME pilot as software for a US factor or SPV, in Texas or another state with no factoring licence or disclosure law.

---

## 2. Regulatory map

### 2.1 Key terms (short)

- **Security:** an investment product regulated by the SEC; selling one needs registration or an exemption.
- **Howey test:** an "investment contract" exists when people invest money in a common enterprise expecting profit from others' efforts.
- **Reves test:** decides whether a "note" is a security; notes resembling short-term receivables-backed commercial notes may not be.
- **Accredited investor:** for individuals, either (a) income over $200,000 in each of the last two years ($300,000 jointly with a spouse) and expected again this year, or (b) net worth over $1 million excluding the primary residence [Regulator/Law: SEC Rule 501(a)(5)–(6)].
- **Broker-dealer / ATS:** a firm effecting securities trades for others (SEC + FINRA); an ATS is a registered securities marketplace run by one.
- **MSB / money transmitter:** a business that moves money for others (FinCEN + state licences).
- **UCC:** state commercial law. Article 9 covers secured loans **and outright sales of receivables**; Article 12 covers "controllable electronic records".
- **True sale:** a real sale of the invoice, not a loan in disguise.

### 2.2 Securities law

**Is an invoice token a security?**
- **Whole invoice bought directly by a business investor, one-off, no platform promises:** probably not a security. Buying a single trade receivable is ordinary commerce, and under Reves receivables-backed short-term commercial notes resemble non-securities [Not re-verified].
- **Invoices marketed on a platform to many investors, with an advertised yield (~17%/yr) and platform verification, servicing and reputation scoring:** the risk is high under Howey, because investors rely on PayDay's "essential managerial efforts" [Not re-verified case-law reasoning].
- **Fractional invoice pieces or pooled notes:** treat as securities.
- **Practical rule:** design as if the investor-facing token is a security. Under the SEC's own March 2026 taxonomy, a tokenised security is a "digital security", still fully a security [Regulator/Law: SEC press release 2026-30; Consultancy/Secondary: Sullivan & Cromwell, Norton Rose].

**Exemptions:**

| Route | Fit for PayDay | Notes |
|---|---|---|
| **Reg D 506(c)** | Best | Unlimited size. General advertising allowed. Accredited investors only, with "reasonable steps" to verify. SEC staff no-action letter of 12 March 2025: verification can rest on a minimum investment of **$200,000 (individuals) / $1,000,000 (entities)** plus written representations that the investor is accredited and the money is not borrowed from a third party for this deal [Consultancy/Secondary: Ropes & Gray, King & Spalding, Baker Hostetler summarising the SEC letter]. The minimum can be a **binding commitment paid in instalments "as and when called"** [Consultancy/Secondary: King & Spalding]. That fits an SPV that calls capital per invoice batch. |
| **Reg D 506(b)** | OK for friends-and-network | No public advertising. Up to 35 non-accredited, sophisticated investors (with heavy disclosure) [Not re-verified]. |
| **Reg CF** | Weak | $5M/12-month cap. Must go through a FINRA funding portal or broker-dealer. Small tickets but high per-deal cost [Not re-verified]. |
| **Reg A+** | Not for now | Up to $75M (Tier 2). SEC qualification takes months and $100k+ [Not re-verified]. |
| **Reg S** | Yes, for non-US investors | Offshore sales. Combine with 506(c) for US investors [Not re-verified]. |
| **Proposed Regulation Crypto Assets (18 Aug 2026)** | Probably no | Covers "covered investment contracts" involving crypto assets that are **not themselves securities**. Startup exemption up to $5M over four years; fundraising exemption up to $75M per 12 months; preempts state registration [Regulator/Law: SEC Commissioner Uyeda statement; CRS LSB11480]. An invoice token is a digital security, so it likely falls outside. It is still only a proposal: the 60-day comment period ran from 21 August 2026 and no final rule is confirmed [Consultancy/Secondary: Simpson Thacher]. |

**Does running the marketplace require broker-dealer registration or an ATS?**
- Matching investors with securities, handling orders and earning **transaction-based compensation** is classic broker activity [Not re-verified].
- A secondary market (PayDay's "resale possible") where buyers and sellers of securities meet is an exchange/ATS function [Not re-verified].
- **JOBS Act §4(b)** (Securities Act §4(b)): a platform for 506 offerings need not register as a broker if it (1) gets no compensation in connection with the purchase or sale, (2) does not hold customer funds or securities, and (3) is not a "bad actor" [Not re-verified]. PayDay's "never touch money" covers (2) only. Charging 0.5–1.5% per trade breaks (1).
- **April 2026 SEC staff statement:** a conditional, time-limited position that certain **self-custodial interfaces** used to prepare crypto asset securities transactions will not be treated as broker-dealers [Consultancy/Secondary: Davis Polk]. This could matter for a PayDay front-end. Ask counsel whether PayDay fits its conditions. Do not assume it does.

**Innovation Exemption (17 Sept 2026):** it does **not** help. It is a five-year conditional exemption (to 17 September 2031) from the "exchange" and "dealer" definitions. It covers permissioned AMM trading of **tokenised NMS stock** (US-listed shares) on "Tokenized Securities Venues". It covers secondary trading only, with no primary issuance [Regulator/Law: SEC press release 2026-90, Release 34-106402; Consultancy/Secondary: Sullivan & Cromwell, Davis Polk, Sidley]. Invoice tokens are not NMS stock.

**Investment Company Act:** a vehicle that holds invoices and issues notes to investors could be an "investment company". Two common outs:
- **§3(c)(5)(A):** excludes issuers primarily buying or acquiring notes, drafts, acceptances, open accounts receivable and other obligations representing part of the sales price of merchandise or services. It is classic for factoring vehicles, and it lets the SPV avoid relying on investor-count limits [Not re-verified].
- **§3(c)(1)/3(c)(7):** private-fund exclusions [Not re-verified].

**Political status:**
- **CLARITY Act** (crypto market structure): passed the House on 17 July 2025 (294–134). Senate cloture on the motion to proceed **failed 49–50 on 15 September 2026**, 11 votes short of 60 [Consultancy/Secondary: DLA Piper, Fireblocks]. If not passed in the lame-duck session, it **expires on 3 January 2027** and must be reintroduced [Consultancy/Secondary: news reports]. One secondary report claims Democrats "take control" after the 3 November 2026 midterms. We did **not verify** the midterm outcome, so treat it as unconfirmed.
- **Effect on PayDay:** small. CLARITY was mainly about crypto commodities and exchanges. An invoice token is a security either way.

### 2.3 Factoring and lending licensing

There is **no federal factoring licence** [Not re-verified]. Most states have historically not licensed true-sale factoring. That is changing:

| State | Rule | Covers factoring? | Dates |
|---|---|---|---|
| **California AB 2116** (signed 30 Sept 2026, Ch. 823) | Brings commercial financing to small businesses (offers ≤ $500k) into the California Financing Law. Providers **and brokers** need a DFPI licence. Agreements by unlicensed providers are **unenforceable**. Ability-to-repay duty. Bans confessions of judgment. | **Yes**, explicitly accounts receivable purchases and factoring | Substantive rules and unenforceability from 1 Jan 2028; licence required from 1 July 2028 [Consultancy/Secondary: DLA Piper, Orrick, Hinshaw, Sheppard; Regulator/Law: bill analysis on CalMatters/legislature] |
| **Vermont Act 142** (H.648, signed 16 June 2026) | Lender licence for providers. Loan-solicitation licence for brokers. APR-style disclosures. Vermont law and courts required. Limits on automatic debits. | **Yes**, sales-based financing and factoring | 1 July 2027 [Consultancy/Secondary: Husch Blackwell, Orrick, NatLawReview] |
| **Disclosure-law states that reach receivables purchases** | Offer-time cost disclosures (some require an estimated APR) | Yes: California, New York, Florida, Georgia, Kansas, Missouri, Utah (+ Vermont from 2027) | In force [Consultancy/Secondary: Jencks Law, Oct 2026] |
| **Sales-based-financing-only states** | Connecticut, Virginia, Texas, Louisiana | Generally **not** classic factoring of specific invoices | In force [Consultancy/Secondary: Jencks Law] |
| **Texas HB 700** (Fin. Code ch. 398) | Disclosure + **registration of providers and brokers** of commercial sales-based financing with the OCCC via NMLS. No de minimis exemption. | Sales-based financing (MCA-type), not classic factoring | Statute 1 Sept 2025; rules 9 July 2026; existing businesses register by **31 Dec 2026** [Consultancy/Secondary: trackers citing Texas Register/OCCC] |
| **Other 2026 additions** | Some trackers claim Illinois and New Jersey passed laws in 2026 | Unconfirmed | Low-quality source only. Verify. |

**True sale vs loan (recharacterisation):**
- If the seller (SME) guarantees payment (full recourse), keeps the upside or must buy back the invoice, a court may call it a **loan**.
- Then usury caps and lender licences apply, and in bankruptcy the invoice may fall back into the SME's estate [Not re-verified].
- PayDay's non-recourse design helps. Keep recourse limited to "dilution" (fake invoice, dispute, credit note), not debtor non-payment.
- California AB 2116 also extends the CFL usury exemption to licensees [Consultancy/Secondary: Hudson Cook].

**Lightest pilot state:**
- **Texas** for SMEs: classic factoring is outside HB 700 and outside its disclosure law, and trucking volume is large.
- Avoid California (2028), Vermont (2027) and New York (full disclosure) for the first deals.
- Caveat: Texas has **not** been confirmed as an Article 12 adopter (see 4.2), so choose New York or Delaware law for the on-chain record.

### 2.4 Money transmission

- **Federal:** FinCEN money transmitter rules apply to anyone accepting and transmitting value, including convertible virtual currency [Not re-verified].
  - **FinCEN's 2019 CVC guidance:** providers of unhosted (non-custodial) wallet software are not money transmitters. DApp operators that themselves accept and transmit value are [Not re-verified].
  - **What this means for PayDay:** if PayDay never has independent control over user funds, risk is low. If the contract briefly holds USDC and PayDay's keys can pause, freeze or redirect it, risk goes up.
- **States:** most states require a money transmitter licence. The CSBS page on the Money Transmission Modernization Act says "To date, thirty-one states have enacted the law in full or in part". A CSBS chart cited by Womble Bond Dickinson shows 35 states as of August 2026, so the CSBS documents disagree [Regulator/Law: CSBS; Consultancy/Secondary: Womble Bond Dickinson]. A licence takes months per state and needs surety bonds and minimum net worth.
- **"Agent of the payee" exemption:** recognised in many states (e.g. California, New York case law/regulation). A firm collecting money as the payee's agent does not transmit, because the payer is discharged on paying the agent [Not re-verified]. A partner factor or bank can use this. PayDay should simply not be in the flow.
- **Design rule:** the investor pays the SME directly (or via a partner bank), and the debtor pays the invoice holder's whitelisted account directly. The contract holds no balance. The pause can stop new listings but cannot freeze funds.

### 2.5 Stablecoins

- **GENIUS Act** (signed 18 July 2025) [Not re-verified for the date].
  - The OCC issued its **final rule on 21 October 2026**. It takes effect on **18 January 2027**, the Act's effective date [Regulator/Law: OCC Bulletin 2026-50; Consultancy/Secondary: MoFo, Mayer Brown, Sidley].
  - BSA/AML/OFAC rules for issuers come in a separate Treasury-coordinated rulemaking [Regulator/Law: OCC Bulletin 2026-50].
  - Treasury issued an interim final rule on state certification on 30 September 2026, with comments due 30 November 2026 [Consultancy/Secondary: RegWatch tracker].
- **Meaning for PayDay:** the Act regulates **issuers** (Circle, Paxos and others), not users. Paying invoices in USDC is lawful. After the effective date, US platforms should use only "permitted payment stablecoins". USDC is expected to qualify, but check Circle's status [Not re-verified].
- **California DFAL:** a licence (or complete application) was required from **1 July 2026** for anyone doing "digital financial asset business activity" (exchanging, transferring, storing) with or for California residents [Regulator/Law: DFPI; Consultancy/Secondary: Goodwin, Womble]. A non-custodial contract may be outside it, but exclude California users until counsel confirms.
- **NY BitLicense:** similar logic for New York residents [Not re-verified].
- **Simplest path:** fiat ACH/wire through a partner bank first (the partner holds the funds). Add USDC only via a licensed on/off-ramp (Circle, Paxos, Bridge, Zero Hash) that does the transfers and KYC [Not re-verified for each provider's licences]. Never settle in AVAX (price risk; not a payment stablecoin).

### 2.6 CFPB / consumer

- Stay **strictly B2B**. Block consumer debtors and sole-proprietor personal debts. That keeps the FDCPA, TILA and most CFPB rules away [Not re-verified].
- **Section 1071** (small-business lending data): the revised CFPB final rule was published on **1 May 2026**, effective 30 June 2026, with compliance from 1 January 2028. It covers loans, lines and cards only, and **factoring is excluded** (as are MCAs and leases). The coverage threshold rose to 1,000 originations a year [Consultancy/Secondary: Mayer Brown, Baker Donelson, Abrigo]. Not a PayDay issue.

### 2.7 Actor-by-actor table

| Actor | Role in US setup | Licence/registration needed | Who should it be? |
|---|---|---|---|
| SME (seller) | Sells invoice | None (B2B) | US business, KYB'd |
| Debtor (client) | Confirms invoice, pays at due date | None | US business, KYB'd, signs acknowledgment |
| Buyer of record | Buys invoice (true sale) | State CFL licence in CA from 2028, VT lender licence from 2027; disclosures in disclosure states | Partner factor or Reg D SPV |
| Investor | Funds SPV / buys notes | Must be accredited (506(c)) or non-US (Reg S) | Verified by partner |
| Placement / trading | Offers notes and runs resale | Broker-dealer (+ ATS for secondary), unless §4(b) fits | Partner BD (e.g. Securitize, Figure, Percent-type) |
| Payments | Fiat in/out, USDC | Bank or licensed money transmitter / DFAL / BitLicense | Partner bank, Circle/Paxos/Bridge/Zero Hash |
| PayDay | Software, verification, on-chain registry | None, **if** flat software fee, no custody, no securities selling | US C-corp or N. Macedonian company licensing software |

---

## 3. AML / KYC / sanctions

- **BSA obligations** fall on "financial institutions": banks, broker-dealers and MSBs. That means an AML programme, customer identification, beneficial ownership under the CDD rule, and suspicious activity reports [Not re-verified].
  - If PayDay is pure software, the partner BD, bank or factor is the obliged entity. PayDay should still do KYB/KYC because partners will demand it.
  - Note: the failed CLARITY Act would have explicitly put crypto brokers and exchanges under the BSA [Consultancy/Secondary: Zyphe].
- **OFAC sanctions** apply to **all** US persons and companies, licensed or not, under strict liability [Not re-verified]. Screen every wallet and entity against the SDN list, and block sanctioned jurisdictions.
- **Tornado Cash precedent:** OFAC sanctioned the smart-contract mixer in 2022. The Fifth Circuit (Van Loon v. Treasury, Nov 2024) held that immutable smart contracts are not "property" that can be sanctioned. Treasury then delisted Tornado Cash in March 2025 [Not re-verified]. The lesson: **people and wallets** can be sanctioned, and a protocol you control (with admin keys) is your responsibility.
- **Corporate Transparency Act / BOI:** FinCEN's final rule (announced 11 Aug 2026, effective 14 Aug 2026) **permanently exempts US-formed companies** from BOI reporting. Only **foreign companies registered to do business in a US state** must report, and only for non-US beneficial owners [Regulator/Law: FinCEN BOI page, Treasury press release, Federal Register 2026-16576].
  - A Delaware C-corp owned by the four founders files nothing.
  - A North Macedonian company that registers to do business in a US state must report the founders.
- **Travel rule:** 31 CFR 1010.410(f) applies it to MSBs and banks for transfers of $3,000 or more. FinCEN guidance FIN-2019-G001 (9 May 2019) extends it to crypto. A 2020 FinCEN/Fed proposal to lower the threshold to $250 was withdrawn without being finalised [Regulator/Law: 31 CFR 1010.410(f), FinCEN FIN-2019-G001]. It is the partner's job.
- **Trade-based money-laundering red flags for invoices:** debtor and seller related; round amounts; no shipping or proof of service; fast resale chains; debtors in high-risk jurisdictions; payment from a third party instead of the debtor.

---

## 4. Legal mechanics of selling an invoice in the US

### 4.1 UCC Article 9 (the classic route)

- **Article 9 applies to outright sales of accounts**, not just loans. The buyer's ownership is "perfected" (made effective against third parties) by filing a **UCC-1 financing statement** in the seller's state of organisation [Not re-verified].
- This is the US equivalent of the UAE Movable Collateral Registry. Filings are cheap (tens of dollars) and online [Not re-verified].
- **Priority:** generally first to file or perfect wins [Not re-verified].
- **Before each purchase, search the SME's UCC records.** Many SMEs have a bank loan with a **blanket lien on all receivables**. The bank then ranks first. You need a **lien release or intercreditor/subordination letter** from the bank, or you must skip that SME. This is the most common practical blocker in US factoring.
- **UCC 9-406:** a clause in the SME's contract with its client banning assignment of the invoice is generally **ineffective**. But the debtor can keep paying the SME until it receives an authenticated **notice of assignment** telling it to pay the buyer [Not re-verified]. This is the "client pays the SME instead" risk. Fix: a signed notice plus a controlled payment account.
- **UCC 9-404:** the buyer takes the invoice subject to the debtor's defences (bad goods, disputes) and to set-offs arising before notice [Not re-verified]. Use a debtor **estoppel/acknowledgment** waiving defences where possible. Keep dilution recourse to the seller.

### 4.2 UCC Article 12: controllable accounts (the on-chain route)

**What it is:**
- A **controllable account** is "an account evidenced by a controllable electronic record that provides that the account debtor undertakes to pay the person that has control under Section 12-105 of the controllable electronic record" [Regulator/Law: UCC §9-102(a)(27A) as enacted in DC, Nebraska and Washington; California §9102(a)(84)].
- **Ownership:** whoever obtains control of the record obtains control of the account (§12-104) [Regulator/Law: Delaware Code tit. 6 ch. 12].
- **Priority:** in New York, a security interest perfected by control beats one perfected only by filing, **even if the filing came first** [Consultancy/Secondary: Wolters Kluwer on NY enactment].
- **Can a PayDay token be a controllable account?** Yes, in principle, if the debtor signs (in the invoice or acknowledgment) a promise to pay whoever controls the token. This is exactly PayDay's step 2 + step 5.
- **Control test (§12-105(a)):** the holder must have:
  - the power to get "substantially all the benefit";
  - the **exclusive** power to prevent others from getting it and to transfer control;
  - a way to identify itself (e.g. by cryptographic key) [Regulator/Law: Delaware Code §12-105].

**Admin keys and pause:**
- A built-in protocol "programmed to cause a change", and shared power, do not destroy exclusivity (§12-105(b)).
- But power is **not** exclusive if another person can act alone while the holder cannot (§12-105(c)) [Regulator/Law].
- A law-journal commentary concludes that where one party can transfer without the other's consent, that party has exclusive control [Consultancy/Secondary: vLex law journal].
- **Therefore: a PayDay admin key that can transfer, burn or reassign invoice tokens likely means the investor does not have control.** A pause that only stops new listings is safer.
- No court has ruled on discretionary admin pauses [Consultancy/Secondary: no case law found].

**Debtor discharge (§12-106):**
- The debtor may pay the current controller, or a former controller until it receives a signed notice that identifies the transferee (e.g. by cryptographic key) and gives a commercially reasonable payment method.
- The notice is ineffective unless, **beforehand**, the debtor and the then-controller agreed in a signed record on how proof of control transfer will be given [Regulator/Law: Delaware Code §12-106].
- PayDay's debtor confirmation should include that agreement: "on-chain transfer events on contract X are reasonable proof".

**Choice of law (§12-107):**
- A record's "jurisdiction" is whatever the record or the system rules expressly state. If nothing is stated, it defaults to the **District of Columbia**.
- No connection to the chosen state is needed [Regulator/Law: Delaware Code §12-107].
- **Put "This CER's jurisdiction is New York (or Delaware) for purposes of the UCC" in the token metadata and terms.**

**Adoption status:**

| State | Status |
|---|---|
| New York | Signed 5 Dec 2025; effective **3 June 2026** [Consultancy/Secondary: Cleary Gottlieb, Dechert, Wolters Kluwer] |
| Delaware | SB 157, signed 18 Aug 2023 [Consultancy/Secondary: Richards Layton & Finger] |
| California | SB 95 (2023) enacted; effective date reportedly 1 Jan 2024 (not confirmed from the chaptered bill) |
| Florida | Enacted [Consultancy/Secondary] |
| Texas | **Not confirmed.** 2021 HB 4474 is a non-uniform precursor; 2025 SB 2223 (full package) seems to have stalled in committee. Treat Texas as **not** an Article 12 state. |
| Count | 36 states + DC, per the Uniform Law Commission's table as of 1 Oct 2026, reproduced by the Wisconsin Digital Business Council. Alston & Bird counted 33 jurisdictions in Dec 2025. |

**Limits:**
- Article 12 does not remove securities, licensing or AML rules.
- It does not fix a fake invoice.
- A bank with a prior blanket lien perfected by filing would still be beaten by control in NY. That is powerful, but expect banks to object in intercreditor talks.

### 4.3 E-SIGN and UETA

- The federal **E-SIGN Act** and state **UETA** make electronic signatures and records legally valid for commercial contracts [Not re-verified].
- A wallet signature can be an electronic signature if the signer intended to sign and the record is retained [Not re-verified].
- **Best practice:** the debtor signs a readable **acknowledgment** off-chain via an e-signature tool and with its wallet (EIP-712 typed data). It should state the invoice amount and due date; "no defences/set-offs"; "will pay whoever controls token X, per §12-106"; the proof-of-transfer method; and the jurisdiction.
- New York's Article 12 has a specific carve-out from NY's ESRA so that ESRA does not impair a CER [Consultancy/Secondary: Dechert].

### 4.4 Recourse and true sale

- Use **non-recourse for credit risk** (debtor can't pay).
- Use **full recourse for dilution** (invoice fake, disputed, discounted, credit note).
- Use a fair, fixed discount, with no clawback of upside to the seller.
- Get a true-sale legal opinion before scaling [Not re-verified practice].

---

## 5. Collections and late payment

- **Options:** reminders and on-chain status; servicer demand letters; commercial collection agency; small claims (limits vary by state, roughly $5k–$25k) [Not re-verified]; then a civil suit in the debtor's state.
- The **FDCPA** covers consumer debts only. Several states license or bond **commercial** collection agencies [Not re-verified]. Use a licensed partner servicer.
- **Credit insurance** (Atradius, Allianz Trade, Coface) is standard in the US for non-recourse factoring [Not re-verified]. First Brands showed insured losses can be large: Morningstar DBRS estimated $300–600M of insured losses [Consultancy/Secondary].
- **US late-payment reality:**
  - The Atradius Payment Practices Barometer US 2026 reports that about seven out of ten companies in the US and North America still face late payments. In the US, late payments affect an average of 22% of B2B receivables, and US companies often report losing 1–2% of B2B invoices as bad debt [Consultancy/Secondary: Atradius US 2026].
  - Atradius's North America release (16 September 2026) says overdue invoices account for an average 23% of B2B receivables and most overdue payments are settled within one month of the due date [Consultancy/Secondary: Atradius NA 2026].
  - So a non-recourse investor should price for delay more than for default.

---

## 6. Data protection, credit reporting and e-invoicing

- **GLBA** mainly protects consumers' financial data. B2B data is mostly outside it, but personal data of owners and guarantors is in scope for partners [Not re-verified].
- **State privacy laws** (CCPA/CPRA etc.) now apply to B2B contact data in California since the B2B exemption expired in 2023 [Not re-verified]. Vermont Act 142 also broadens financial privacy to non-bank regulated entities [Consultancy/Secondary: Orrick].
- **Public on-time/late record about businesses:**
  - The FCRA mostly covers reports on **consumers**. Pure business payment data is generally outside it, but sole proprietors blur the line [Not re-verified].
  - The bigger risk is **defamation/trade libel** and **breach of confidentiality** if a "late" label is wrong or a dispute is ongoing.
  - Fixes: keep identities off-chain (salted commitments); show reputation only to verified participants; add a dispute flag and correction process; get debtor consent in the acknowledgment.
  - D&B, Experian Business and Equifax Business sell business payment data, so PayDay could later **feed** them rather than publish openly [Not re-verified].
- **E-invoicing:** the US has **no federal B2B e-invoicing mandate** [Not re-verified]. The Business Payments Coalition / **DBNAlliance** runs a voluntary e-invoice exchange framework (Peppol-like) [Not re-verified; status not checked for 2026]. It can help verify that an invoice was really sent through a known network, but adoption is low. Do not rely on it as the main anti-fraud control.

---

## 7. Market

| Metric | Figure | Source type |
|---|---|---|
| US factoring turnover 2025 | **€156.5bn, +35.5%** (2024: €115.5bn) | [Consultancy/Secondary: FCI statistics table] |
| North America 2025 | €160bn, +35.1% | [Consultancy/Secondary: FCI press release, 5 May 2026] |
| SFNet | Factoring volume among SFNet respondents fell 3.9% from H2 2023 to H2 2024, mainly lower US volume | [Consultancy/Secondary: ABF Journal citing SFNet] |
| Small businesses | 36.2M (SBA Advocacy 2025) | [Not re-verified] |
| Late payments | About 7 in 10 US firms affected; late payments hit an average 22% of US B2B receivables; 1–2% of B2B invoices often lost as bad debt; 55% of US suppliers report B2B customers delay payment | [Consultancy/Secondary: Atradius US 2026] |
| Typical US factoring | Advance 70–90%; fee about 1–5% per 30 days; trucking often 2–5% flat, with "fuel advance" and quick-pay | [Not re-verified] |
| Underserved segments | Trucking/freight (largest), staffing, construction (retainage, lien law complexity), government contractors (Assignment of Claims Act), healthcare | [Not re-verified] |

**What it means:** the US is about 10× Croatia-relevant volumes. But the FCI 35.5% jump should be read cautiously: regional totals reflect reporting members and an estimate [Consultancy/Secondary: ABF Journal], and SFNet showed a dip the year before. Trucking is the obvious niche, but it is crowded (see section 8).

---

## 8. Competitors and lessons

| Player | Model | Licences/structure | Lesson for PayDay |
|---|---|---|---|
| Triumph / TriumphPay | Bank-owned factoring + freight payment network | Bank holding company | The network that verifies and pays invoices wins in trucking |
| RTS, OTR, altLINE, Riviera, FundThrough | Factors (altLINE is bank-affiliated) | Balance sheet / bank lines, UCC filings | Partner candidates; they need tech |
| BlueVine, Fundbox, Resolve, Slope, Settle | Fintech credit / B2B BNPL | Bank partners, lender licences, credit facilities | Fintechs use bank partners |
| Behalf | B2B BNPL | Shut down (2022) | Unit economics and credit risk kill B2B BNPL |
| Percent, P2Binvestor, Supervest | Private credit / receivables marketplaces for accredited investors | Reg D notes, SPVs, affiliated broker-dealer (Percent) | **Closest model**: accredited-only, notes via a BD |
| Centrifuge, Goldfinch, Maple, Credix, Huma | On-chain private credit / PayFi | Off-chain SPVs, KYC'd pools, often non-US investors only | Goldfinch/Maple pool defaults show off-chain credit risk dominates |
| Figure / Provenance, Securitize | Tokenisation, registered BD/ATS/transfer agent | SEC-registered entities | Possible partners for the investor-facing token |

All rows [Not re-verified] unless noted.

**Fraud lessons:**
- **First Brands:** the SDNY indictment (29 Jan 2026) of Patrick and Edward James alleges employees routinely submitted fake, inflated and double-pledged invoices to factoring counterparties [Regulator/Law: DOJ SDNY press release]. Jefferies' Leucadia fund held $715M of First Brands-linked receivables [Consultancy/Secondary].
- **Tricolor:** by about August 2025 it had pledged about $2.2bn of collateral but had only about $1.4bn of real collateral, and lenders were owed more than $900M. The founder and others were indicted (SDNY) [Regulator/Law: DOJ SDNY press release]. The SEC filed charges in August 2026 [Consultancy/Secondary].
- **Lesson:** double pledging is a **registry and verification** problem. PayDay's debtor confirmation plus UCC search and filing plus Article 12 control directly attack it. That is a real selling point to US factors after 2025–2026.

---

## 9. Risk design table

| Risk | US-specific design |
|---|---|
| Unregistered securities / broker | Partner BD or 506(c) SPV; flat software fee; no per-trade fee to PayDay |
| Fake invoice | Debtor KYB + signed acknowledgment; invoice hash; proof of delivery |
| Double financing | UCC search before purchase; UCC-1 filing after; Article 12 control; one token per invoice |
| Bank blanket lien | Lien search; bank release or intercreditor letter; else decline |
| Debtor pays the SME | §9-406 notice + §12-106 notice; controlled account; seller repurchase on diversion |
| Disputes / dilution | Recourse for dilution; reserve/holdback 5–10% |
| Admin key undermines control | No admin transfer or burn; pause = listings only; multisig; timelock |
| Money transmission | No contract balances; partner moves funds |
| Sanctions | OFAC wallet and entity screening; geo-block |
| State licensing drift | Avoid CA/VT until licensed partner; monitor IL/NJ |
| Defamation / privacy | Off-chain identities; dispute flag; consent |

---

## 10. Product changes vs the 7 milestones

| Milestone | US version |
|---|---|
| 1. Verified companies | KYB via vendor (Secretary of State records, EIN check, beneficial owners); OFAC screening; **UCC lien search** on the seller |
| 2. Invoice fingerprinting | Hash of the signed invoice + proof of delivery; optional DBNAlliance network ID |
| 3. Legal transfer agreement | Master purchase agreement (true sale, dilution recourse); debtor acknowledgment with **Article 12 controllable-account language**, §12-106 proof method, and §12-107 jurisdiction (NY/DE); **UCC-1 filing connector** |
| 4. USDC payments | Fiat first via partner; USDC via a licensed provider after 18 Jan 2027; whitelisted wallets only |
| 5. Private invoice data | Salted commitments on-chain; data off-chain; reputation visible only to verified users |
| 6. Emergency pause | Pause **new listings and trades only**; no admin transfer, burn or reassign (protects "exclusive control"); multisig + timelock |
| 7. Security audit | Same audit as EU; add a review of the control analysis by US counsel |
| Extra | **Accredited investor verification** (506(c), or the $200k/$1M minimum route); Reg S geo-checks; pull payments; cancel/reprice; E-SIGN audit trail |

---

## 11. Phased go-to-market

| Phase | What | Exit criteria to move on |
|---|---|---|
| **0 (now–Q1 2027)** | EU first. Make the product US-ready (Article 12 design, OFAC, KYB). No US users. | EU partner pilot live; audit done |
| **1 (2027)** | "US capital, EU assets": US accredited investors buy notes of an EU SPV or partner vehicle (Reg D 506(c)); EU investors under Reg S | ≥ $1–2M funded; zero fraud losses; counsel sign-off |
| **2 (2027–28)** | US SME pilot: PayDay software for one US factor (trucking/staffing) in Texas; partner buys invoices; fiat rails | 100+ invoices; < 2% dilution; partner renews; break-even path visible |
| **3 (2028+)** | Scale: more factors; tokenised notes via a BD/ATS partner; USDC rails; decide on own registrations | ≥ $25M/yr financed; unit economics proven |

**Don't list:**
- Don't sell invoice tokens to US retail investors.
- Don't take a per-trade fee as an unregistered platform.
- Don't hold user funds in the contract or keep admin keys that can move tokens.
- Don't use AVAX for settlement.
- Don't publish client names or late flags on a public chain.
- Don't start in California or Vermont without a licensed partner.
- Don't buy invoices from SMEs whose bank holds an unreleased blanket lien.
- Don't accept consumer debtors.
- Don't market a "17% return" in the US.
- Don't register a foreign company in a US state without filing its BOI report.

---

## 12. US entry structure for non-US founders

- **Do you need a US entity?** Not for Phase 1. A Croatian or EU vehicle can sell to US accredited investors under Reg D (foreign issuers may use Reg D; file Form D and state notices) [Not re-verified]. A US entity helps with Phase 2 (US banking, contracts with US factors, US VCs).
- **Entity choice:** Delaware C-corp is standard for VCs and YC [Not re-verified]. An LLC is pass-through, which is bad for foreign owners (US filing duties, possible effectively-connected income). Avoid a Wyoming DAO LLC for a regulated finance business.
- **Cost and process:** Stripe Atlas or doola, about $500–2,000 setup plus a registered agent of about $100–300/yr. EIN for foreigners via IRS Form SS-4 (fax or mail, weeks). ITIN only if personally needed [Not re-verified].
- **Banking:** Mercury, Relay and others onboard foreign-owned Delaware companies, but crypto-related businesses face extra review. A partner-bank model reduces this need [Not re-verified].
- **Tax:** a C-corp pays 21% federal corporate tax plus state tax. Non-resident founders are taxed in the US on US-source income such as dividends, with 30% withholding absent a treaty. We believe there is **no income tax treaty in force between the US and North Macedonia**. Confirm with a tax adviser [Not re-verified].
- **Visas:** B-1 business visitor for meetings only (no productive work). Longer options: O-1 or L-1. Whether North Macedonia qualifies for E-2 must be checked [Not re-verified]. Nobody needs to live in the US for Phases 0–2.

---

## 13. Funding and support

- **Team1 Builder Grants** (Avalanche): launched 1 July 2026. **Mini Grants up to $10,000** (open applications) and **Accelerator Grants up to $30,000** (committee-selected; strong Mini Grant projects can be fast-tracked) [Consultancy/Secondary: Team1 posts on X, CryptoBriefing, Blockworks]. Backed by a $1.15M Avalanche Foundation grant [Consultancy/Secondary]. **Apply first; this is the best fit.**
- **Retro9000:** the Avalanche Foundation **concluded Retro9000 on 20 August 2026** [Consultancy/Secondary: Blockworks]. It is no longer available.
- **Blizzard Fund** (Avalanche ecosystem VC) [Not re-verified].
- **Accelerators and VCs:** Y Combinator (accepts foreign founders; standard deal about $500k) [Not re-verified]; a16z crypto CSX; Alliance DAO; fintech and crypto VCs [Not re-verified].
- **Regulatory sandboxes:** SEC Crypto Task Force (open meetings and written submissions); Utah, Arizona and Wyoming fintech sandboxes [Not re-verified]. Sandboxes do not remove SEC rules.

---

## 14. "US capital, EU assets" option (brief assessment)

- **How it works:** the Croatian (HANFA-licensed) partner or an EU SPV buys Croatian invoices. US accredited investors buy notes of that SPV under **Reg D 506(c)**, using the $200k minimum commitment route to simplify verification. EU investors buy under Reg S and EU rules.
- **Why it's the lightest US step:** no US SME licensing, no US debtor law, no US money transmission. Only a Form D, state notice filings, US investor KYC/OFAC, and an Investment Company Act exclusion (§3(c)(5)(A) or 3(c)(7)) [Not re-verified].
- **Main costs:** about $25–75k of US securities counsel for the private placement memorandum and subscription documents, plus a placement agent or BD if paying anyone per sale [Not re-verified].
- **Verdict:** best first US move, once the EU pilot works.

---

## 15. Open questions and risks

- Fee model vs JOBS Act §4(b) and the April 2026 self-custodial-interface position.
- Pause-only admin vs "exclusive" control (no case law).
- Texas Article 12 status (evidence says no).
- Illinois/New Jersey 2026 laws (unconfirmed).
- CLARITY Act after 3 January 2027 and the midterms.
- USDC's permitted status from 18 January 2027.
- Bank willingness to sign intercreditor letters.

---

## 16. Key sources

**Primary [Regulator/Law]:** SEC press releases 2026-30 and 2026-90; Uyeda statement on Regulation Crypto Assets; CRS LSB11480; OCC Bulletin 2026-50; FinCEN BOI final rule (FR 2026-16576); DOJ SDNY (First Brands; Tricolor); DFPI DFAL page; AB 2116 analysis; Delaware Code Title 6 ch. 12; UCC §9-102 (DC, NE, WA, CA).

**Secondary [Consultancy/Secondary]:** Sullivan & Cromwell, Davis Polk, Sidley, Dechert, DLA Piper, Fireblocks, MoFo, Mayer Brown, Orrick, Hinshaw, Hudson Cook, Husch Blackwell, Jencks Law, Wolters Kluwer, Cleary Gottlieb, Ropes & Gray, King & Spalding, Baker Donelson, Goodwin, FCI, ABF Journal, Atradius, Team1/Blockworks.

**Links:**
- SEC press release 2026-30 (crypto asset taxonomy): https://www.sec.gov/newsroom/press-releases/2026-30-sec-clarifies-application-federal-securities-laws-crypto-assets
- SEC Uyeda statement on Regulation Crypto Assets: https://www.sec.gov/newsroom/speeches-statements/uyeda-statement-regulation-crypto-assets-081826
- OCC Bulletin 2026-50 (GENIUS Act rule): https://www.occ.gov/news-issuances/bulletins/2026/bulletin-2026-50.html
- Delaware Code Title 6 ch. 12 (UCC Article 12): https://delcode.delaware.gov/title6/c012/
- DC Code §28:9-102 (controllable account definition): https://code.dccouncil.gov/us/dc/council/code/sections/28:9-102
- DOJ SDNY, First Brands charges: https://www.justice.gov/usao-sdny/pr/first-brands-executives-charged-multibillion-dollar-fraud
- DOJ SDNY, Tricolor charges: https://www.justice.gov/usao-sdny/pr/ceo-cfo-coo-charged-connection-billion-dollar-collapse-tricolor-auto
- California DFPI, Digital Financial Assets: https://dfpi.ca.gov/regulated-industries/digital-financial-assets
- Treasury press release (BOI final rule): https://home.treasury.gov/news/press-releases/sb0603
- Ropes & Gray on the 506(c) no-action letter: https://www.ropesgray.com/en/insights/alerts/2025/03/sec-issues-no-action-letter-clarifying-rule-506c-accredited-investor-verification
- King & Spalding on the 506(c) letter: https://www.kslaw.com/news-and-insights/sec-staff-no-action-letter-eases-rule-506c-accredited-investor-verification
- Sullivan & Cromwell, Regulation Crypto Assets: https://www.sullcrom.com/insights/memo/2026/August/SEC-Proposes-Regulation-Crypto-Assets
- Sullivan & Cromwell, Innovation Exemption: https://www.sullcrom.com/insights/memo/2026/September/SEC-Issues-Innovation-Exemption-for-Tokenized-Securities
- Davis Polk, Innovation Exemption: https://www.davispolk.com/insights/client-update/sec-s-innovation-exemption-opens-path-tokenized-stock-trading
- DLA Piper, CLARITY Act vote: https://www.dlapiper.com/en/insights/publications/2026/09/senate-fails-to-advance-the-clarity-act
- DLA Piper, California AB 2116: https://www.dlapiper.com/en-us/insights/publications/2026/10/california-ab-2116-extends-licensing-requirements-to-all-commercial-financing-providers
- Orrick, California AB 2116: https://infobytes.orrick.com/2026-10-02/california-enacts-licensing-regime-for-small-business-commercial-financing-providers-and-brokers/
- Orrick, Vermont commercial financing licensing: https://infobytes.orrick.com/2026-06-26/new-vermont-law-bans-virtual-currency-kiosks-and-creates-commercial-financing-licensing-regime/
- Husch Blackwell, Vermont Act 142: https://www.huschblackwell.com/newsandinsights/vermont-folds-sales-based-financing-and-factoring-into-its-licensing-regime
- Jencks Law, disclosure laws and factoring: https://jenckslaw.com/2026/10/11/commercial-finance-disclosure-laws-factoring/
- Mayer Brown, OCC GENIUS Act rule: https://www.mayerbrown.com/en/insights/publications/2026/11/occ-finalizes-genius-act-rulemaking
- Wolters Kluwer, New York UCC amendments: https://www.wolterskluwer.com/en/expert-insights/new-york-enacts-ucc-amendments-on-digital-assets
- Cleary Gottlieb, New York UCC amendments: https://www.clearygottlieb.com/news-and-insights/publication-listing/new-york-enactment-of-2022-ucc-amendments-for-digital-assets-and-emerging-technologies
- FCI 2025 world factoring statistics: https://fci.nl/en/news/fci-releases-2025-world-industry-statistics-global-factoring-market-surpasses-eu4-trillion?language_content_entity=en
- ABF Journal, factoring's resurgence: https://www.abfjournal.com/factorings-quiet-resurgence/
- Team1 Builder Grants: https://www.kucoin.com/news/flash/avalanche-s-team1-launches-builder-grants-program-with-up-to-30-000-per-project

---

## 17. Three-market comparison

| Factor | EU (Croatia first) | UAE (ADGM) | USA |
|---|---|---|---|
| Licensing burden | High (national factoring + MiCA + PSD2) | Medium (ADGM PFP licence fits invoices) | **Very high** (SEC + BD + state factoring licences + MTL) |
| Partner needed? | Yes (HANFA factor) | Yes (onshore CBUAE factor) | **Yes: factor/SPV + BD + bank/stablecoin** |
| Cost to pilot | €100–200k | Similar via partner | **$100–250k/yr** (+ Stage 0 $50–120k) |
| Cost of own licence | €250–500k | USD 350–700k/yr | **$0.5–3M+** (BD, CFL, MTLs) |
| Time to first real money | 6–12 months | 9–15 months | **12–18 months** (or 6–12 for "US capital, EU assets") |
| Market size | Large but fragmented | Small, growing | **Largest single market** (€156.5bn factoring 2025) |
| Stablecoin options | EURC via MiCA CASP | AVAX/USDC not usable onshore | USDC under GENIUS (from 18 Jan 2027); state DFAL/BitLicense |
| Investor rules | Professional investors | Professional clients | **Accredited only (506(c)); $200k/$1M minimum shortcut** |
| Legal transfer / registry | Assignment + notice; no on-chain law | Movable Collateral Registry | **UCC-1 filing + Article 12 control (best on-chain law)** |
| Team fit (4 N. Macedonian founders, €10–20k) | **Best**: nearby, same language region | Medium | **Weakest**: distance, cost, visas, no US network |
| **Order** | **1** | **2** | **3** (start with "US capital, EU assets") |

**Recommendation:** Keep EU first and UAE second. Make the US **market 3**. Do not skip it, because US investors are the deepest pool of private-credit capital and Article 12 is the best legal fit for PayDay's design. Enter only after the EU pilot works. Use US capital for EU invoices first. Then offer PayDay as software to a US factor in a light-touch state. Build the Article 12-compatible contract design now, because it costs little and also makes the EU and UAE versions stronger.
