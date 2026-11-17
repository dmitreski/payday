# PayDay: UAE market research

Market report 2 of 3 (EU done, UAE done, USA next). Written 17 November 2026 by Martino with Claude (claude.ai research chat).
Not legal advice. Every rule below must be checked by a UAE-licensed lawyer before you act. Cost and timeline figures are partly estimates or from consultancies. Re-check before deciding.

Source labels: **[Regulator/Law]** = primary source (CBUAE, DFSA, FSRA, VARA, MoF, official legislation). **[Consultancy/Secondary]** = law firm, vendor or market-research source. **[Not re-verified]** = from general knowledge, not checked in this research round.

## Decision from the chat

- **EU (Croatia) first, UAE second.** The UAE is a good market 2, entered through a licensed partner after the EU pilot proves the product.
- **Why not UAE first:** own licence costs 1.5–2× more (resident staff), break-even is higher (~$35–70M/yr financed vs ~€15M in Croatia), five regulators with rules that changed in 2025–26, Sharia needs a second product variant, and the team has no UAE presence yet.
- **What the UAE does better:** ADGM's Private Financing Platform licence names invoice platforms explicitly ($10k capital if no client money), a national registry protects against double financing, and payment delays and the SME credit gap are bigger.

---

PayDay can work in the UAE, but only as a regulated-partner model, the same as in the EU. You cannot run it as a standalone "we don't touch the money" DeFi marketplace. The UAE path costs more and has more regulators. In exchange, Abu Dhabi's ADGM has a ready-made licence for invoice-financing platforms with very low capital. Payment terms are long (60–120 days in many sectors), and SMEs get under 10% of bank lending. That makes the problem PayDay solves bigger here than in Croatia.

## 1. Short version

| Item | UAE answer |
|---|---|
| **Verdict** | Works only as a regulated-partner model. Not as standalone DeFi. Harder and costlier than the EU, but with a clearer "invoice platform" licence in ADGM. |
| **First jurisdiction** | **Abu Dhabi Global Market (ADGM)**, regulator FSRA. Its "Operating a Private Financing Platform" (PFP) licence explicitly covers invoice financing. Dubai's DIFC (regulator DFSA) is plan B. |
| **First structure** | A small free-zone tech company (DIFC Innovation Licence, USD 1,500/yr, or an ADGM tech licence). It supplies software to a **licensed partner**: an FSRA PFP operator, a DFSA crowdfunding operator, or a CBUAE-licensed bank/finance company. The partner is the legal buyer/arranger of record. Later, PayDay applies for its own ADGM PFP licence. |
| **Investors** | Professional investors only at the start (family offices, funds, HNWIs who qualify as Professional Clients). ADGM allows up to 200 assessed retail clients per offer later. No retail marketing. |
| **Settlement** | Phase 1: AED through the partner's bank account. SMEs and debtors never touch crypto. Phase 2: USDC inside ADGM/DIFC for professional investors only. Phase 3: a CBUAE-licensed AED stablecoin (e.g. AE Coin) for onshore flows. **Do not use AVAX or USDC for onshore UAE payments.** |
| **Legal backbone** | Federal Decree-Law 16/2021 on Factoring + register every sale in the Emirates Movable Collateral Registry (protects against double financing). |
| **Sharia** | Not legally required, but commercially important. Plan a fee-based (ujrah/wakala) variant in year 2. |

## 2. Direct answers to the founders' questions

### Q1. "We don't touch the money — can we be a marketplace without a licensed partner in the UAE?"

**No.** Four separate rules catch PayDay even if it never holds funds:

1. **Factoring licence (onshore).** Article 25 of Federal Decree-Law 16/2021: factoring may only be carried on in the State after a licence from the Central Bank. Whoever buys invoices from mainland SMEs as a business needs a CBUAE licence. **[Law]**
2. **"Facilitation by any technology" (onshore).** The new Central Bank Law, Federal Decree-Law 6/2025, took effect on 16 September 2025. Article 62 covers anyone who engages in, offers, issues or facilitates a licensed financial activity by any means. Article 61(1)(h) also makes *promoting* a licensed activity a licensed activity. The one-year transition ended on 16 September 2026. CBUAE says software or infrastructure providers are not automatically licensed, but decentralisation alone does not take an activity outside the rules. **[Law + Consultancy summaries]**
3. **Free-zone platform licences.** In ADGM, running an invoice-financing website that brings SMEs and investors together is "Operating a Private Financing Platform." In DIFC it is "Operating a Crowdfunding Platform." Both apply to platforms that hold no client money. Not holding money only lowers your capital requirement. **[Regulator]**
4. **Tokens and stablecoins.** In Dubai, a token that gives a right to an invoice's payment is likely an Asset-Referenced Virtual Asset (ARVA). Issuing one needs a VARA licence. Moving stablecoins for UAE customers is a CBUAE "Payment Token Service." **[Regulator + Consultancy]**

"Never touching the money" is still a good design. In ADGM it cuts the PFP base capital from USD 150,000 to USD 10,000. It also avoids client-money rules and makes a partner's job easier. But it does not remove the licence.

### Q2. "Estonia company" (EU idea) vs a UAE free-zone company

| | Estonia OÜ (EU report idea) | UAE free-zone company (DIFC Innovation Licence) |
|---|---|---|
| Cost | Low (e-Residency, cheap incorporation) | USD 100 incorporation + USD 1,500/yr licence + ~USD 6,000/yr desk |
| Allows financial services? | No, needs separate licences | **No.** The Innovation Licence is a non-financial commercial licence |
| Gives visas/residency? | No | Yes, up to 4 discounted visas |
| Banking for a crypto startup | Medium difficulty | Hard (UAE banks are cautious with crypto-related firms) |
| Tax | 0% on retained profit, 22% on distribution **[Not re-verified]** | 9% UAE corporate tax; 0% possible on "qualifying income" of a free-zone person **[Not re-verified]** |
| Useful for | A software vendor to an EU partner | A software vendor to a UAE partner + presence in the ecosystem |

**Conclusion:** both are "software company shells." Neither lets you run the marketplace yourself. The UAE free-zone company is more useful than Estonia was for the EU: visas, a local address regulators and partners respect, and access to DIFC/ADGM programmes.

### Q3. Is the UAE easier or harder than the EU?
Harder to run alone. About the same with a partner. More expensive for your own licence, mainly because key staff must live in the UAE. Faster for professional-investor pilots, because the ADGM PFP regime was built for this exact use case.

## 3. Cost table by stage (USD; AED pegged at 3.6725)

*Regulator fees are from primary sources where marked. Salary, legal and audit figures are estimates. Get quotes.*

| Stage | What | Spent money (one-off + year 1) | Locked capital | Time |
|---|---|---|---|---|
| **Scrappy start** | DIFC Innovation Licence (USD 100 + 1,500), flexi desk, 1–2 visas, one fixed-fee legal memo, Fuji testnet only, no real money | **USD 15,000–30,000** | 0 | 1–2 months |
| **Stage 0 — Foundation** | Free-zone company, UAE lawyer opinion on Factoring Law/CBUAE perimeter/ADGM PFP, Sharia advisory memo, smart-contract changes (pause, USDC, privacy), first audit quote, KYB vendor | **USD 50,000–100,000** | 0 | 3–6 months |
| **Stage 1 — Partner pilot** | Software licence to an FSRA/DFSA-licensed operator or bank; master receivables purchase agreement; Movable Collateral Registry filings; e-invoicing ASP connection; full security audit; 10–30 real invoices with professional investors | **USD 120,000–250,000** | 0 (partner carries regulatory capital) | 6–12 months |
| **Stage 2 — Own ADGM PFP licence** | FSRA fees (USD 10,000 application + USD 10,000/yr; USD 500 per approved person); UAE-resident SEO, Compliance Officer/MLRO; PII insurance; audit; office | **USD 350,000–700,000/yr** (mostly salaries) | **USD 10,000** if no client assets (or 6/52 of annual expenditure if higher). USD 150,000 if you hold client assets | 9–15 months |
| *Alt 2b — DFSA crowdfunding licence* | DFSA fees USD 10,000 application + USD 15,000/yr | similar to 2 | **USD 140,000** base capital, even without client money | 9–15 months |
| *Alt 2c — VARA (token route)* | Broker-Dealer + Category 1 Issuance: AED 100,000 application + AED 200,000/yr **each** | USD 500,000–1,000,000+ | AED 400,000–600,000 (~USD 110,000–165,000) broker-dealer, plus issuance capital | 6–12+ months |
| *Not realistic* | CBUAE finance company | — | AED 150 million paid-up capital; 60% UAE-national ownership | — |

- **Totals (realistic path):** Scrappy + Stage 0 + Stage 1 ≈ **USD 185,000–380,000** before any own licence. Adding Stage 2 year 1 brings it to ≈ **USD 0.55–1.1 million**.
- **EU comparison:** €40–90k + €100–200k + €250–500k. About the same up to the pilot; own licence roughly 1.5–2× more in the UAE because of resident staff.
- **Break-even (estimate):** at a 1% platform fee, about USD 35–70 million a year financed to pay for an ADGM licence team (EU: €15M). Before your own licence, a revenue share with the partner is the only income.

## 4. Next steps (next 90 days, if/when the team pursues the UAE)

1. **Book a scoping call with the ADGM FSRA** (authorisation@adgm.com) and with DIFC FinTech Hive / DFSA Innovation. Ask: "Is a true-sale invoice marketplace a PFP (ADGM) or Loan Crowdfunding (DIFC)?"
2. **Get one written legal opinion** (fixed fee) on: (a) Article 25 Factoring Law; (b) FDL 6/2025 Article 62 for a software vendor; (c) whether an ADGM-licensed platform can source invoices from mainland SMEs.
3. **Shortlist 3 partners:** a licensed invoice platform (e.g. Beehive, DFSA-regulated), a bank with supply-chain finance (Emirates NBD smartSCF, Mashreq, ADCB), and a tokenisation-friendly ADGM firm.
4. **Change the prototype:** USDC instead of AVAX; emergency pause; remove invoice data from the chain; add a registry-filing field.
5. **Apply to Hub71 (Abu Dhabi) and DIFC FinTech Hive**, and use the Avalanche Team1 MENA network for introductions.
6. **Do not raise money from UAE retail investors and do not market "yield" in the UAE** until you have a licensed partner.

## 5. Open questions for the team

1. **Software vendor** (cheap, slow growth) or **licensed platform** (expensive, you control the business)?
2. Will one founder **move to the UAE**? The ADGM PFP requires the SEO, Compliance Officer and MLRO to be UAE-resident. The SEO needs 5+ years of relevant experience.
3. Who are your first 10 **professional investors**? Without them, no partner will onboard you.
4. Which **sector** first? Construction pays slowest (100–120 days in practice) but carries the most risk. Wholesale and services are safer.
5. Ready to build a **Sharia-compliant version**? A large share of regional SME financing demand prefers it (estimate).
6. Is **Avalanche** essential? Partners will ask why not a permissioned chain. Prepare an answer (an Avalanche L1 with KYC'd validators is a good one).
7. The "PayDay Brain" artifact (BRIDGes problem space) still couldn't be opened from Martino's account. Share it so the USA research uses the same problem space.

---

# Full research report

## 6. Executive summary

- **Regulation is split across five bodies.** Onshore (mainland): CBUAE (banking, factoring, payments, stablecoins) and the **Capital Market Authority (CMA)**, which replaced the SCA on 1 January 2026. Dubai mainland and free zones except DIFC: **VARA** for virtual assets. Financial free zones: **DFSA** (DIFC) and **FSRA** (ADGM) with their own common-law rules.
- **Best fit is ADGM.** The FSRA's PFP framework names "invoice financing platforms" and "trade receivables funding," targets professional investors, needs USD 10,000 base capital without client assets, and costs USD 10,000 to apply plus USD 10,000 a year. **[Regulator]**
- **DIFC is second.** The DFSA crowdfunding regime has no invoice-specific rule. Invoice finance fits only if structured as a loan to a company. Base capital is now USD 140,000 even without client money. **[Regulator]**
- **VARA (Dubai) treats receivable tokens as ARVAs**, which needs a full Category 1 issuance licence. Most expensive route. Avoid at first.
- **Onshore factoring needs a CBUAE licence** (Article 25, Factoring Law). No standalone CBUAE factoring licence category could be confirmed. The Finance Companies Regulation excludes factoring from scope and requires AED 150m capital. For mainland SMEs, partner with an existing bank or licensed finance company. **[Law/Regulator]**
- **Legal transfer of invoices is good law.** The Factoring Law allows bulk and future receivables, needs no debtor consent (notice is enough), and registration in the Movable Collateral Registry gives priority against third parties. Better double-financing protection than in Croatia.
- **Stablecoins:** onshore, only CBUAE-licensed AED tokens can pay for goods and services; USD tokens only to buy virtual assets. DIFC recognises USDC, EURC and RLUSD. ADGM accepts a longer list including USDT.
- **E-invoicing arrives in 2027.** Revenue ≥ AED 50m goes live 1 January 2027; all others 1 July 2027. PayDay's best anti-fraud hook.

## 7. Regulatory map

### 7.1 Key terms

| Term | Meaning |
|---|---|
| **Onshore / mainland** | The UAE outside the financial free zones. Federal law, Arabic-language courts, CBUAE and CMA rules. |
| **CBUAE** | Central Bank of the UAE. Regulates banks, finance companies, factoring, payments, stablecoins (Payment Tokens). |
| **CMA (ex-SCA)** | Capital Market Authority. Federal securities regulator since 1 Jan 2026 (Federal Decree-Laws 32 and 33 of 2025). |
| **VARA** | Dubai's Virtual Assets Regulatory Authority. Covers virtual-asset activity in Dubai, except DIFC. |
| **DIFC / DFSA** | Dubai International Financial Centre and its regulator. Common law, English language, own courts. |
| **ADGM / FSRA** | Abu Dhabi Global Market and its regulator. English common law applies directly. |
| **PFP** | "Private Financing Platform": ADGM licence for SME debt/equity/invoice platforms. |
| **ARVA** | VARA's "Asset-Referenced Virtual Asset": a token linked to a real-world asset or income. |
| **Payment Token** | CBUAE term for a stablecoin. "Dirham Payment Token" = AED stablecoin; "Foreign Payment Token" = e.g. USDC. |
| **Hawala (hawalat al-haqq)** | Civil-law assignment of a right/claim. |
| **Professional Client** | An investor who meets size/experience tests. Fewer protections, so platforms can serve them more easily. |

### 7.2 Which regulator covers what

| Activity | Onshore (CBUAE / CMA) | Dubai (VARA) | DIFC (DFSA) | ADGM (FSRA) |
|---|---|---|---|---|
| Buying invoices as a business (factoring) | **CBUAE licence** (Art. 25, FDL 16/2021) | n/a | Credit/financing permissions | Financing permissions |
| Running an invoice marketplace | Likely "facilitating" credit (FDL 6/2025, Arts. 61–62) | n/a unless tokens | **Operating a Crowdfunding Platform** (Loan Crowdfunding) | **Operating a Private Financing Platform** |
| Secondary trading of invoice claims | CMA if securities | VARA broker-dealer/exchange | Not part of crowdfunding; needs MTF/ATS | **MTF licence** in addition to PFP |
| Single-invoice token | CMA if a security | **ARVA, Category 1 issuance licence** | Security/Investment Token | Digital security / virtual asset framework |
| Stablecoin payments | **Payment Token Services Regulation** | VARA (non-AED tokens in Dubai) | Fiat Crypto Tokens: USDC, EURC, RLUSD | Accepted Fiat-Referenced Tokens list |
| AML supervisor | CBUAE | VARA | DFSA | FSRA |

### 7.3 Actor by actor

| Actor | Role in PayDay | UAE status needed |
|---|---|---|
| **PayDay (software company)** | Builds and runs the code | Free-zone commercial licence (e.g. DIFC Innovation). No financial licence **only if** a partner operates the regulated platform and PayDay does not arrange, promote or control deals. |
| **Licensed partner** | Legal platform operator / buyer of record | ADGM PFP, DFSA crowdfunding operator, or CBUAE bank/finance company |
| **SME (seller)** | Sells invoice | Must be a company (body corporate). ADGM and DFSA rules exclude individuals. |
| **Debtor (client)** | Confirms and pays | No licence. Should sign an acknowledgement of assignment. |
| **Investor** | Buys invoice | Professional Client at first. Buying invoices *as a business* onshore could itself be factoring, so a fund or SPV structure is safer. |
| **Servicer / collection agent** | Collects, chases late payers | Partner or a licensed debt-collection firm |
| **Custodian / stablecoin provider** | Holds USDC/AED tokens | DFSA/FSRA-authorised custodian or CBUAE-licensed payment-token custodian |

### 7.4 ADGM PFP — key facts (FSRA Guidance VER02.181223, December 2023) [Regulator]

- Covers "equity funding, private placement and **invoice financing platforms**."
- Clients: mainly **Professional Clients**. Up to **200 retail clients** per offer if assessed, and only if the licence allows retail.
- SMEs seeking funding must be a **body corporate**.
- **Capital:** USD 10,000 base (or 6/52 of annual audited expenditure) without client assets. USD 150,000 (or 18/52) with client assets.
- **Fees:** USD 10,000 authorisation + USD 10,000 annual supervision per activity. USD 500 per approved person.
- **People:** SEO (5+ years' experience), Finance Officer, Compliance Officer, MLRO. **SEO, CO and MLRO must be UAE-resident.** CO and MLRO can be the same person. FO, CO and MLRO can be outsourced.
- **Track record:** 5 years in corporate finance, **or** the FSRA can consider controllers' and key people's experience. The hardest part for PayDay.
- **Secondary market:** an "Exit Facility" is allowed only if not active trading and fee-free. Real trading needs an extra **MTF** licence.
- **Marketing:** no mass advertising of specific deals. General promotion of the platform is OK.
- **Sharia:** to promote a deal as Sharia-compliant, the PFP needs an Islamic Financial Business endorsement.
- *Date check:* guidance dated December 2023. Confirm no newer version exists.

### 7.5 DIFC crowdfunding — key facts [Regulator, DFSA Rulebook]

- Three types only: Loan, Investment, Property Investment (GEN 2.29.1). **No invoice-specific rule.** Invoice finance fits only as a **loan to a body corporate** with a written, legally enforceable loan agreement (COB 11.4.1). A true sale of invoices is not clearly covered (our inference).
- **Base capital USD 140,000** for any crowdfunding operator, even without client assets (PIB 3.6.2, after 2025 reforms; previously USD 10,000).
- **Fees:** USD 10,000 application (FER 2.1.1); USD 15,000 annual (FER 3.2.1), plus add-ons.
- **Retail limits (COB 11.4.2):** max USD 10,000 per borrower and USD 100,000 per calendar year per retail client.
- Secondary trading is not part of the crowdfunding activity.

### 7.6 Onshore: CBUAE perimeter

- **Factoring Law Article 25:** CBUAE licence needed to do factoring as a business. **[Law]**
- **Finance Companies Regulation (Circular 3/2023):** Art. 1.3(c) puts factoring and finance lease **outside** its scope; minimum paid-up capital AED 150m and 60% UAE-national ownership. **[Regulator]** Lawyers describe getting a finance company licence with a factoring permission, or partnering with an existing finance company. **[Consultancy]** No standalone factoring licence category confirmed.
- **New Central Bank Law (FDL 6/2025):** in force 16 September 2025. Covers "facilitation" through technology. Penalties include prison and fines from AED 50,000. Reported maximum fines conflict between sources (AED 500m vs AED 1bn); check the law text. **[Law + Consultancy]**
- **Retail Payment Services and Card Schemes Regulation (2021)** **[Not re-verified]**: a smart contract collecting money from debtors and passing it on could be seen as money transfer or stored value. Keep the partner's bank account as the payment route in Phase 1.

### 7.7 Lightest licensing path

1. **Now:** DIFC Innovation Licence (or ADGM tech licence), software vendor only.
2. **Pilot:** licensed partner runs the platform; Professional Client investors; company SMEs and debtors; AED via the partner's bank; every sale registered in the Movable Collateral Registry.
3. **Scale:** own **ADGM PFP** licence (no client assets, USD 10k capital). Add an MTF only if real secondary trading is needed.
4. **Later, if needed:** tokens as ADGM digital securities or under DFSA/VARA; onshore AED stablecoin rails through a CBUAE-licensed provider.

## 8. AML / KYC

- **Law:** Federal Decree-Law 10/2025 on AML/CFT/CPF, in force **14 October 2025**, **repealed FDL 20/2018**. Implementing rules: **Cabinet Resolution 134/2025**. VASPs are now "regulated entities." Corporate fines up to **AED 100 million**; managers can be personally liable. **[Law + Consultancy]**
- **FATF:** grey-listed 4 March 2022, removed 23 February 2024. **[Secondary]**
- **Travel Rule:** virtual-asset transfers at or above **AED 3,500**; collect and pass on sender/receiver data; keep records 5 years. **[Consultancy]**
- **What PayDay must do (through the partner first):**
  - KYB on every SME and debtor: trade licence, UBO (≥25%), sanctions and PEP screening (UAE local terrorist list + UN).
  - KYC on every investor, plus Professional Client assessment.
  - Wallet screening (chain analytics); allow-list only verified wallets.
  - Monitor for circular invoices (SME and debtor with the same owners), a classic trade-based money-laundering pattern.
  - goAML reporting by the licensed entity's MLRO.

## 9. Legal mechanics of selling an invoice

### 9.1 Which law applies
- **Factoring Law — Federal Decree-Law 16/2021** (in force ~8 December 2021). Allows assignment of present **and future** receivables, bulk description, true sale **or** security. **[Law + Consultancy: Dentons, DLA Piper, Hadef]**
- **New Civil Transactions Law — Federal Decree-Law 25/2025**, **in force 1 June 2026**, replacing the 1985 Civil Code (Federal Law 5/1985). Debtor consent generally not required; notice to or acceptance by the debtor matters. Contracts signed before 1 June 2026 stay under the old code. **[Law + Consultancy]**
- **Movable security — Federal Law 4/2020** and the **Emirates Movable Collateral Registry**. Under Factoring Law Art. 7(2), an assignment is **not effective against third parties unless registered**. Priority follows registration order. **[Law via Hadef]**
- **DIFC/ADGM:** English-style common law. Assignment by contract plus notice. Use an ADGM- or DIFC-law master agreement for the investor side.

### 9.2 What this means for PayDay

| Topic | UAE rule | PayDay design |
|---|---|---|
| Debtor consent | Not needed. After notice, the debtor can only discharge by paying as instructed | Keep the debtor wallet confirmation, but make it a **signed acknowledgement of assignment**. This also cuts off set-off claims. |
| Anti-assignment clauses | Commentators say the Factoring Law limits their effect **[Consultancy, verify]** | Still check contracts. Exclude government debtors that ban assignment. |
| Double financing | Registry priority by filing order | **File every sale in the Movable Collateral Registry before paying the SME.** Put the registry reference in token metadata. |
| True sale vs loan | True sale possible; no codified securitisation "true sale" test | Non-recourse sale + no buy-back = true sale. If the SME guarantees payment, it looks like a loan (fits DIFC loan crowdfunding). |
| Token ≠ legal title | A token transfer alone does not assign the claim | Master Receivables Purchase Agreement: each token transfer = an assignment offer accepted electronically. Partner/servicer is legal holder or agent. |
| Payment control | Debtor must pay as per notice | Notice instructs payment into a **partner-controlled collection account** (Phase 1), not a wallet. |

### 9.3 Electronic signatures
- **Federal Decree-Law 46/2021** on Electronic Transactions and Trust Services recognises electronic and qualified signatures. **UAE PASS** offers a government-backed digital signature. **[Not re-verified]**
- **Design:** debtor acknowledgement = UAE PASS (or qualified) e-signature **plus** wallet signature. The UAE version of the EU's "QES + wallet."

### 9.4 Sharia
- Mainstream Islamic finance standards treat **selling a debt for less than face value for cash** (bay' al-dayn at a discount) as **riba**. "Pay 960 for 1,000" is **not Sharia-compliant as is**. **[Not re-verified]**
- Compliant structures:
  - **Ujrah (fee):** investor advances funds (qard); platform/agent earns a fixed collection fee.
  - **Wakala:** investor appoints an agent to invest for an expected profit.
  - **Murabaha / purchase-order finance:** buy the goods, not the debt.
- Not legally required, but commercially useful (Beehive offers both). ADGM requires an Islamic endorsement to label a deal Sharia-compliant.
- **Recommendation:** launch conventional with professional investors; Sharia advisory memo in Stage 0; wakala/ujrah product in year 2.

## 10. Collections and late payment

- **Long terms.** Coface's first UAE survey: average terms 60–90 days, average delays 30–60 days; construction 97-day terms with 93-day delays; 80% of receivables overdue more than 6 months are never fully paid. **[Consultancy, older survey]** Coface 2024: construction terms 60–90 days, actual payment 100–120 days. **[Consultancy]**
- **Atradius UAE barometer (Aug 2025):** half of B2B sales on credit, average terms 47 days, 58% of credit sales paid late. Aug 2026 edition: about two in five B2B invoices paid late, industrial and construction hit hardest. **[Consultancy]**
- **Meaning:** the on-time/late reputation layer is valuable here, but pricing must include expected delay. A 90-day invoice paid at day 150 cuts investor yield sharply.
- **Enforcement [Not re-verified]:** onshore payment orders for undisputed written debts; bounced cheques largely decriminalised in 2022 and directly enforceable; post-dated cheques common as security; DIFC Courts Small Claims Tribunal only where DIFC jurisdiction applies.
- **Servicer:** the partner or a licensed collection agent chases late payers. Put the role in the master agreement and price it (e.g. 0.25–0.5% of face value, estimate).

## 11. Data protection and e-invoicing

### 11.1 Data protection [Not re-verified unless marked]
- **Onshore:** Federal Decree-Law 45/2021 (PDPL). Check whether executive regulations are in force.
- **DIFC:** Data Protection Law No. 5 of 2020. **ADGM:** Data Protection Regulations 2021 (named in the PFP guidance). **[Regulator]**
- **Credit data:** **Al Etihad Credit Bureau (AECB)** operates under federal credit-information law. Publishing payment history may count as credit information; public "late payer" labels could raise defamation risk.
- **Design rule (same as EU):** no names, invoice numbers, identity-linked amounts or hashes of personal data on a public chain. Only a salted commitment and pseudonymous debtor ID on-chain. Keep readable reputation **inside the platform** for KYC'd users, with debtor consent in onboarding terms. Consider feeding data to AECB through a licensed partner.
- **E-invoice records must be stored in the UAE.** **[Consultancy: KPMG]**

### 11.2 E-invoicing (status 17 Nov 2026) [Law: Ministerial Decisions 243 and 244 of 2025; MR 66/2026]

| Date | What |
|---|---|
| 1 Jul 2026 | Pilot (Taxpayer Working Group) and voluntary adoption started |
| 30 Oct 2026 | Revenue ≥ AED 50m: deadline to appoint an Accredited Service Provider (ASP), extended from 31 July 2026 by MR 66/2026 |
| **1 Jan 2027** | Mandatory for revenue ≥ AED 50m |
| 31 Mar 2027 | Revenue < AED 50m and government: appoint ASP |
| **1 Jul 2027** | Mandatory for revenue < AED 50m |
| 1 Oct 2027 | Government entities |

- **Model:** Peppol **5-corner** (seller → seller's ASP → buyer's ASP → buyer, ASP reports tax data to the FTA). Format: PINT AE. 64 accredited providers reported on 8 October 2026. **[Consultancy]**
- **How PayDay plugs in:**
  1. Only finance invoices that exist as **Peppol e-invoices reported to the FTA**; store the e-invoice ID hash on-chain.
  2. Partner with an ASP via API. Becoming an ASP (Ministerial Decision 64/2025, amended) isn't worth it now.
  3. Big debtors (≥ AED 50m) must be able to **receive** e-invoices from 2027, giving an independent confirmation channel.
- **Gap:** most SME sellers aren't mandated until **July 2027**. Before then, use voluntary e-invoicing or debtor acknowledgement plus registry filing.

## 12. Market

| Indicator | Figure | Source type |
|---|---|---|
| Number of SMEs | ~557,000 at end-2022 (target 1m by 2030) | Ministry of Economy via Gulf News/Zawya |
| SME share of companies | >94% | Secondary (via Beehive) |
| SME share of non-oil GDP | ~63.5% | Ministry of Economy via Gulf News/Zawya |
| Bank SME facilities | AED 81.2bn (~USD 22.1bn) mid-2024; SME lending +13% in H1 2024 | CBUAE data via Global Business Outlook |
| SME share of commercial/industrial bank facilities | ~9.5% (mid-2024) | CBUAE data via Global Business Outlook |
| MENA SME finance gap | USD 210–260bn | IFC estimates via secondary |

- SMEs carry the economy but get under 10% of bank credit. Banks prefer large corporates and government-related entities. Long terms lock cash in receivables. That's PayDay's exact problem.
- Far fewer SMEs than the EU (~0.56m vs 25m+), but larger invoices and delays. Realistic year-2 target: **USD 10–30m financed** through a partner.
- **Government support [Not re-verified]:** Dubai SME, Khalifa Fund, Emirates Development Bank (own receivable-financing product), Etihad Credit Insurance (possible credit-cover partner).
- **Trade corridors:** India, China, Saudi Arabia, GCC. Start with **domestic AED invoices**.
- Avoid market-size numbers from paid market-research sites (USD 565m to USD 30bn for the "same" market).

## 13. Competitors and lessons

| Player | Model | Notes |
|---|---|---|
| **Comfi** (Dubai) | Invoice discounting + B2B BNPL; up to 100% of invoice within hours | USD 65m pre-Series A (equity + debt, April 2026) after a USD 5m debt facility in 2024. Eligibility: 12+ months trading, AED 300k+ monthly revenue. Strongest direct competitor. |
| **Beehive** (DIFC) | P2P marketplace, invoice and term finance, conventional and Sharia | DFSA-regulated; part of e& enterprise; AED 4.3bn funded by Q3 2025 (vendor claim). One source says FSRA-regulated; unresolved. **Possible partner.** |
| **Funding Souq** | Receivables-backed SME lending | Regional |
| **Zelo** | Invoice finance + bank guarantees, 24–48h | Fintech |
| **Banks** | Emirates NBD smartSCF, Mashreq, ADCB, HSBC, Standard Chartered | Cheap but slow, collateral-heavy, corporate focus |
| **Emirates Development Bank** | Receivable financing for priority sectors | Government |
| **Zamanat** | DIFC tokenised private-credit fund, target up to USD 100m, on ZIGChain (Sept 2026) | Closest on-chain SME credit peer |
| **Standard Chartered (DIFC)** | Institutional USDC minting/redemption since July 2026 | USDC rails exist in the free zones |
| Global: Polytrade, Tradeteq, Centrifuge | Tokenised trade finance | Present via events/partnerships; check licensing |

**Lessons:**
1. UAE winners (Comfi, Beehive) are **fiat-first**; customers never see a blockchain. Copy that.
2. Speed (hours) and 100% advance are the bar. Atomic settlement matches it only with instant fiat on/off ramps.
3. EU lessons still apply: Goldfinch losses came from weak underwriting; First Brands double financing is exactly what registry filing prevents; bank consortium platforms failed for lack of volume.
4. Differentiation: **verified debtor confirmation + payment reputation + registry-anchored ownership.** Lead with that, not "DeFi."

## 14. Stablecoins and payment rails

### 14.1 Onshore: CBUAE Payment Token Services Regulation (Circular 2/2024, in force 31 August 2024) [Regulator]
- Licensed services: Dirham Payment Token issuance; payment-token custody and transfer; payment-token conversion.
- **Dirham Payment Tokens** need a CBUAE licence and can be used for any lawful payment.
- **Foreign Payment Tokens** (e.g. USDC) need CBUAE registration and onshore may only be used to buy virtual assets or VA derivatives.
- Algorithmic and privacy tokens banned; paying interest on payment tokens banned.
- **Licensed AED issuers (register, Feb 2026):** AED StableCoin LLC (AE Coin), Zand Trust, AEDC Stable Coin. **[Secondary reading; check live register]**
- **USDU** reported as first USD token registered as a Foreign Payment Token (January 2026). **[Secondary]**
- **Digital Dirham (CBDC):** check B2B availability. **[Not re-verified]**

### 14.2 Free zones
- **DIFC:** since 12 January 2026, recognised Fiat Crypto Tokens: **USDC, EURC, RLUSD**. **[Regulator via Ocorian/DLA Piper]**
- **ADGM:** accepted **USDC, USDT, EURC, RLUSD, PYUSD, USDP, USD1, USDL**. **[DLA Piper, Oct 2026]**

### 14.3 What this means
- **AVAX:** not acceptable for real invoices anywhere in the UAE. Remove.
- **USDC:** fine between professional investors and a DIFC/ADGM-licensed platform. Not fine for a mainland debtor paying a mainland SME.
- **AED stablecoin (AE Coin etc.):** the only onshore-legal on-chain payment for the invoice itself. Check whether it exists on Avalanche or needs a bridge (bridges add risk).

### 14.4 Recommended settlement design

| Phase | Investor → SME | Debtor → investor | Crypto touches |
|---|---|---|---|
| 1 (pilot) | Investor wires AED to partner's segregated account → partner pays SME in AED. Contract records ownership only. | Debtor pays AED to partner's collection account (per assignment notice) → partner pays the holder. Contract records on time/late. | No one. The chain is a registry. |
| 2 | Professional investors fund in USDC inside ADGM/DIFC → licensed converter pays SME in AED | Same as Phase 1 | Investors only |
| 3 | AED stablecoin end-to-end through a CBUAE-licensed custodian/transferor | Debtor pays in AED stablecoin or AED | All parties, via licensed providers |

PayDay never holds money; a licensed party does.

**Banking access [Not re-verified]:** UAE banks are cautious with crypto-linked startups. Use a free-zone-friendly digital bank and describe the business as "B2B fintech software" (true in Phases 0–1).

## 15. Risk design

| Risk | UAE angle | Control |
|---|---|---|
| Fake invoices | Circular trading between related companies | Debtor UAE PASS + wallet acknowledgement; e-invoice ID check; KYB showing different UBOs |
| Double financing | Same invoice sold to a bank and to PayDay | Registry search + filing before funding; bank-account control |
| Late payment | 30–60+ day delays common | Price expected delay; servicer; reserve fund (e.g. 2–5% holdback, estimate) |
| Debtor default | 80% of debts >6 months overdue never fully paid (Coface) | Credit insurance (Etihad Credit Insurance or private); per-debtor concentration limits |
| Smart-contract bug | Same as EU | Audit, emergency pause, upgrade multisig held by the licensed partner |
| Regulatory perimeter | FDL 6/2025 "facilitation" enforceable since 16 Sept 2026 | Written legal opinion; never market to onshore investors yourselves |
| Sharia mis-labelling | Calling a riba product "Islamic" | Don't use the word until a Sharia board approves |
| Data/defamation | Public "late" labels | Identity off-chain; dispute process before marking "late" |
| Key person / residency | SEO, CO, MLRO must live in UAE (ADGM) | Plan relocation or hire |

## 16. Product changes vs the 7 milestones

| Milestone | UAE verdict | UAE additions |
|---|---|---|
| Verified companies | **Essential** | Trade-licence check (DED/free-zone registries), UBO, sanctions; companies only |
| On-chain invoice fingerprints | **Keep, change** | Salted commitment; link to Peppol e-invoice ID; no personal data |
| Legal transfer of debt | **Essential** | Master agreement under Factoring Law or ADGM law; **Movable Collateral Registry filing**; assignment notice with payment instruction |
| USDC payments | **Change** | USDC only inside DIFC/ADGM for professional investors; AED fiat first; AED stablecoin later |
| Private invoice data | **Essential** | Off-chain storage **in the UAE**; PDPL/DIFC/ADGM DP compliance |
| Emergency pause | **Essential** | Pause key held by the licensed partner; documented governance |
| Security audit | **Essential** | Partner and FSRA will ask before go-live |
| **New:** UAE PASS signature | Add | Debtor acknowledgement + SME signing |
| **New:** E-invoicing ASP integration | Add | Verify invoice via Peppol/FTA flow |
| **New:** Registry connector | Add | Filing reference in token metadata |
| **New:** Sharia variant | Add (year 2) | Ujrah/wakala: fixed fee instead of discount |
| **New:** Professional-investor gating | Add | On-chain allow-list linked to KYC + Professional Client status |
| **New:** Servicer module | Add | Late-payment workflow, reminders, legal escalation |
| **New:** Remove AVAX payments | Add | Real money only in AED/approved stablecoins |

## 17. Phased go-to-market

| Phase | Timing | Budget (USD) | Goal | Exit criteria |
|---|---|---|---|---|
| **0. Foundation** | Dec 2026 – May 2027 | 50–100k | Company, legal opinion, regulator calls, product changes, Hub71/FinTech Hive applications | Signed LOI with one licensed partner |
| **1. Partner pilot** | Jun 2027 – Mar 2028 | 120–250k | 10–30 invoices, 5–10 professional investors, AED rails, registry filings; ride the July 2027 SME e-invoicing wave | Zero double financing; <5% default; partner wants to scale |
| **2. Own ADGM PFP** | Apply ~Q2 2028; licence ~2029 | 350–700k/yr | Own platform, more investors, possibly up to 200 retail | USD 35–70m/yr financed for break-even |
| **3. Tokens / stablecoins** | 2029+ | Varies | USDC funding in-zone, AED stablecoin, MTF secondary trading | Regulator approval |

*Note: these dates assume UAE-first. With the EU-first decision, shift UAE phases back to after the Croatian pilot.*

**Don't:**
- Take money from UAE investors before a licensed partner is live.
- Advertise "17% yield" to UAE residents. Under FDL 6/2025 Art. 61(1)(h), promotion itself is a licensed activity.
- Use AVAX or USDC for onshore invoice payments.
- Put debtor names or payment history in clear on a public chain.
- Call the product "Sharia-compliant" without a Sharia board.
- Issue tokens under VARA as a first step (costliest route).
- Rely on "it's decentralised." CBUAE says that alone does not take you outside the rules.

## 18. Funding and support

| Programme | What | Relevance |
|---|---|---|
| **DIFC Innovation Licence** | USD 1,500/yr (subsidised years 1–2; up to year 7 if ≤10 staff), USD 100 incorporation, up to 4 visas **[secondary]** | Cheapest credible base |
| **DIFC FinTech Hive** | Accelerator with bank partners | Partner introductions |
| **DFSA Innovation Testing Licence / Tokenisation Sandbox** | Tokenisation sandbox launched March 2025 (96 expressions of interest); excludes crypto tokens; needs a DFSA licence | Stage 2+ |
| **ADGM RegLab** | FSRA sandbox **[fees not re-verified]** | Alternative to a full PFP at first |
| **Hub71 (Abu Dhabi)** | Incentives (housing, office, licence support) **[Not re-verified]** | Fits the ADGM plan |
| **Dubai Future Foundation / Dubai Blockchain Centre / Avalanche Team1 MENA** | Ecosystem, events, intros **[Not re-verified]** | Investors and partners |

- **vs EU:** EU grants (EIC, national funds) give non-dilutive cash. UAE programmes mostly give subsidised licences, office, visas and partner access. UAE equity investors are more open to fintech/web3 than in Croatia.
- **Tax [Not re-verified]:** 9% corporate tax on profits above AED 375,000. A Qualifying Free Zone Person can get 0% on qualifying income, but mainland-customer income may not qualify. Get a tax adviser before choosing the entity.

## 19. Open questions and risks

1. **Can an ADGM PFP serve mainland SMEs and debtors?** FDL 6/2025 may catch "facilitating" credit to onshore borrowers. **#1 legal question.**
2. **Is a true-sale invoice purchase a "PFP Transaction" in ADGM?** Probably yes. DIFC likely only if structured as a loan.
3. **Does an investor buying many invoices become a "factor" needing a CBUAE licence?** Use a fund/SPV, or have the partner be buyer of record.
4. **No dedicated CBUAE factoring licence category confirmed.** Ask CBUAE directly.
5. **AE Coin on Avalanche?** Unknown. Check.
6. **PDPL executive regulations status** and AECB rules on sharing payment data.
7. **Track-record rule:** will the FSRA accept a young team? Plan for an experienced SEO or a co-founder/advisor with 5+ years in corporate finance.
8. **Rule drift:** Central Bank law, AML law, civil code, securities regulator and DFSA crypto rules all changed between September 2025 and June 2026. Re-check before each phase.

## 20. Key sources

**Primary (regulator/law):**
- Federal Decree-Law 16/2021 on Factoring (Art. 25 licence; Art. 7(2) registration)
- Federal Decree-Law 6/2025 (new Central Bank Law, Arts. 61–62)
- CBUAE Finance Companies Regulation (Circular 3/2023)
- CBUAE Payment Token Services Regulation (Circular 2/2024) — rulebook.centralbank.ae
- Federal Decree-Law 10/2025 (AML) and Cabinet Resolution 134/2025
- Federal Decree-Law 25/2025 (Civil Transactions Law, in force 1 June 2026)
- Federal Decree-Laws 32 and 33/2025 (CMA replaces SCA)
- MoF Ministerial Decisions 243 and 244/2025 and Ministerial Resolution 66/2026 (e-invoicing) — mof.gov.ae
- FSRA Guidance – Private Financing Platforms (VER02.181223) — assets.adgm.com
- DFSA Rulebook GEN 2.29.1, COB 11.4, PIB 3.6.2, FER 2.1.1/3.2.1 — dfsaen.thomsonreuters.com
- VARA Virtual Asset Issuance Rulebook (19 May 2025)
- DFSA Tokenisation Regulatory Sandbox page

**Secondary (flagged in text):** Dentons, Hadef & Partners, DLA Piper (incl. Oct 2026 tokenisation note), Gibson Dunn, White & Case, Addleshaw Goddard, Mondaq, CMS, Ocorian, Legal500, KPMG, Deloitte, Coface, Atradius, Khaleej Times/Gulf News/Zawya, Comfi and Beehive pages.

## 21. EU vs UAE comparison

| Dimension | EU (Croatia first) | UAE (ADGM first) |
|---|---|---|
| **Licensing burden** | High: factoring (HANFA), MiCA CASP, GDPR | Higher: 5 regulators; onshore factoring = CBUAE; but ADGM PFP explicitly fits invoice platforms |
| **Partner model needed?** | Yes | Yes |
| **Cost to pilot** | €140–290k | USD 170–350k (similar) |
| **Cost of own licence** | €250–500k | USD 350–700k/yr, mainly resident staff; capital only USD 10k (ADGM, no client assets) |
| **Time to first real money** | ~9–12 months | ~9–15 months (partner pilot); helped by July 2027 SME e-invoicing |
| **Market size** | 25m+ SMEs, mature factoring | ~0.56m SMEs, <10% of bank credit to SMEs, 60–120-day terms |
| **Stablecoin options** | EURC/USDC under MiCA, EU-wide | USDC/EURC/RLUSD (DIFC); wider list incl. USDT (ADGM); onshore only AED tokens (AE Coin etc.) |
| **Investor rules** | Professional investors; ECSP retail tests | Professional Clients; ADGM up to 200 assessed retail; DIFC retail caps USD 10k/borrower, USD 100k/yr |
| **Legal transfer** | Assignment + notice; no central registry | Factoring Law + **central registry with priority** (better double-financing protection) |
| **Sharia** | Not relevant | Commercially important; current discount model not compliant |
| **Language / team fit** | Croatian close to Macedonian; nearby; EU funding | English in free zones; Arabic onshore courts; relocation needed for licence staff; strong web3/fintech ecosystem |
| **Overall** | Easier, cheaper first market | Bigger problem per SME, better registry and platform licence, but costlier and needs UAE residency. **Market 2 via a partner, after the EU pilot proves the product.** |
