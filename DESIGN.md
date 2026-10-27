# PayDay design system

The rules every PayDay page follows: landing (`app/index.html`), app (`app/app.html`) and anything new.
Direction: look native to Avalanche (avalanche.com), without copying their logo, photos or paid font.
When something new is designed, it follows this file. When David changes a direction, this file changes too.

## Principles
- Dark, heavy, confident. Big uppercase headlines, lots of black, one red accent.
- Everything sits on one gutter. Nothing floats in a centered column.
- Honest copy: testnet is testnet, test AVAX has no value, nothing is audited yet.
- Plain English labels. Roles first, names second ("Business · Bakery").

## Layout
- **Gutter:** `--pad: max(16px, 1.6vw)` (avalanche.com uses 23px at 1440px). Every section, the navbar, cards and footer start on this line. No `max-width` page columns.
- **Navbar:** solid `#1d1d1d`, 66px tall, logo left, links/actions right.
- **Hero** (avalanche.com layout): fits exactly one screen (`min(100svh, 900px)`). Headline top-left across the full width, scaling with width and height (`min(10.5vw, 15vh)`). Under it on the left: body text, then the proof points (small, one row, divided by thin lines), then the buttons pinned to the bottom (dark "Try the demo" first, red "Launch app" second, then a red-edged "Built on Avalanche" label). Bottom right: the live contract card (red left edge, live numbers, Snowtrace link). The logo strip starts right below the fold.
- **Full-width blocks** (like the How it works cards) run gutter to gutter and fit the screen under the navbar.
- **Colored sections are rounded panels, never edge-to-edge bands:** they sit on the gutter (`margin: 0 var(--pad)`) with 22px corners, inner boxes 14-18px corners. Same family as the cards.
- Phones: 16px gutter, no horizontal scroll, buttons full width.

## Color
| Token | Value | Use |
|---|---|---|
| bg | `#000` | page |
| surface | `#131314` | cards, sections |
| surface-2 / tile | `#1d1d1f` / `#212020` | inputs, tiles, collapsed cards |
| nav | `#1d1d1d` | navbar |
| text | `#fff` | primary text |
| soft | `#c6cccd` | headline second line, secondary headings |
| muted | `#a2afb2` | body copy, labels |
| accent | `#e84142` (hover `#ff5455`) | the only accent: CTAs, highlights, headline first line |
| ok | `#30d158` | paid, investor earnings |
| warn | `#ff9f0a` | demo mode |

Status badges: Created grey, Confirmed blue `#64a8ff`, Listed violet `#bf8af2`, Sold teal `#64d2ff`, Paid green, Overdue red.

## Typography
- **Font:** Satoshi (Fontshare, free for commercial use), the closest free match to Avalanche's Aeonik (paid). Mono: JetBrains Mono for addresses and amounts in inputs.
- **Display headings:** weight 900, UPPERCASE, line-height `.82`, letter-spacing `-.01em`. Two-tone: first part one color, the punchline in red (`Five steps.` / **`One contract.`**).
- **Labels/eyebrows:** 12-13px, weight 700, uppercase, letter-spacing `.08-.1em`.
- **Body:** 15-17px, weight 400-500, muted color.
- **Numbers:** tabular figures (`font-variant-numeric: tabular-nums`).

## Logo
- **Mark:** red stem + two chevrons. The stem makes it a **P**, stem plus first chevron also reads as a **D** (PayDay). Second chevron at 55% opacity.
  - SVG (viewBox `0 0 29 24`): stem `rect x=1 y=4 w=5.2 h=17.5`, chevrons `M7.6 4h5.2l8 8-8 8H7.6l8-8z` and `M15.4 4h5.2l8 8-8 8h-5.2l8-8z`.
  - The stem is as wide as a chevron, its top level with the chevrons, only the bottom 1.5 units longer.
- **Wordmark:** lowercase `payday`, Satoshi 700, 25px, letter-spacing `-.02em`, 9px after the mark.
- **Alignment:** the mark is nudged 2.5px down so its center sits on the word's center (measured).
- **Favicon:** `app/favicon.svg`, white mark on a red rounded square.

## Components
- **Buttons:** square-ish (radius 0-6px). Primary red; secondary dark tile with a 3px red left edge. Big CTAs: 56px tall, label left, `→` right, arrow nudges right on hover.
- **Cards:** radius 14-22px, no shadows on dark, 1px subtle border at most. Emphasis = 3px red left edge.
- **Tabs:** uppercase 13px labels with a red underline for the active one. On phones (≤560px) they become a fixed bottom bar: four equal slots, icon over label, red top line and icon for the active one, safe-area padding. Never a sideways-scrolling strip.
- **Phone navbar:** one row only: logo, one account pill (red "Connect wallet" until connected, then a ghost pill with the short address or demo role), and a ☰ menu button. The menu panel holds the wallet block (account picker, name, balance, add accounts) and the Demo mode button with a plain-words explanation. Never icon-only for an action that needs explaining.
- **Secondary tools (like Fraud test):** a small ghost button that opens a sheet (bottom sheet on phones). Never a permanent card between the user and their data.
- **Looping strips:** keep looping under Reduce Motion (slower), tap to pause. Never fall back to a wrapped pile.
- **Dropdowns:** never the browser's default arrow. Custom chevron (12×8, soft grey), 14px in from the right edge, 40px right padding so text never runs into it. Inside a chip: 8px inset, 30px padding.
- **Wallet chip:** role/account picker, then the balance in its own segment (thin divider left, 12px padding both sides, Satoshi 600, tabular numbers). Nothing touches the chip's edge.
- **Spacing rule:** no text, icon or chevron ever sits against a border. Minimum 12px from any edge.
- **Dialogs:** `<dialog>`, dark surface, 3px red left edge (top edge on phones, bottom sheet), blurred backdrop, uppercase title with a red part.
- **Announcement strip** (e.g. demo mode): one line, 36-40px, directly under the navbar, inside the sticky header.
- **Logo strip** (sponsors, under the hero): every logo pure white on transparent (files in `app/sponsors/`), 78% opacity, 100% on hover. Sized by visual weight, not equal height: `height = clamp(24px, sqrt(3600 / aspect), 38px)`. 56-112px between logos, endless loop (45s, pauses on hover), edges fade out. Always labeled for what it is ("hackathon sponsors"), never implied as PayDay partners.
- **Expanding cards** (How it works): no section heading above them. Open card grows, others shrink to strips with the number top and a red round arrow at the bottom. The open card shows `How it works · <step>` next to its number; its arrow is black and goes to the next card. The invoice ticket sits bottom right at a fixed 440px width and scales down (84%, 72%) on smaller screens instead of wrapping.

## Motion
- Easing: `cubic-bezier(.2,.6,.35,1)` for reveals, `cubic-bezier(.165,.84,.44,1)` for the expanding cards (1s).
- Page load: headline lines drop in from above inside a clipped line (1s, then 1.4s, 0.2s delay), body follows, buttons and facts slide in from the left one by one.
- On scroll: sections fade up 32px once.
- Always respect `prefers-reduced-motion`.

## Money and numbers
- Show USD next to AVAX wherever money appears (`≈ $0.045`), live price from CoinGecko, hidden if the price can't load. Say "test AVAX has no real value" where it matters.
- The business always picks its own discount (sell dialog, presets 2/5/10/15/20%). Never imply a fixed rate. Show investor return per deal and per year.
- Default test amounts are small (0.005 AVAX) so faucet AVAX lasts.

## Demo mode
- Exactly three roles: 🏭 Business · Bakery, 🏬 Client · Supermarket, 💰 Investor. English, short, role first.

## Voice on the site
- Plain words, no hype, no em dashes. Admit limits (testnet, not audited).
- Credit tools by name when it builds trust ("Tested with Foundry").

## Lists with status (landing "Status" section)
- Title and description stacked on the left, a small status chip on the right (red outline "Planned"; use green "Live" when something ships). A label row above shows the group and a count ("0 of 7 done"). Never right-aligned grey descriptions across a wide gap.
- The status section: title and intro left-aligned on top, a snake: milestones 1-3 on the right level with the title, 4-5 on the left below, 6-7 on the right again, one line running through all seven with elbows between. Phones get one straight line. Each milestone is a chain: diamond nodes on a vertical rail, one card ("block") per milestone with a mono "Milestone 01" label, a red pulse travelling down the rail and a ring pulse on each node. Pulses stop under Reduce Motion (static rail stays). Cards stack the chip under the text on phones.
- Landing hero on desktop: proof points sit directly above the buttons.

## Pinned scroll (landing "How it works", phones)
- On phones the cards section is pinned to the screen and scroll progress opens the cards one by one (01 to 05), then the page continues. It is called a pinned scroll section (scrollytelling); the scroll is never blocked, the page is just taller (60svh per card).
- Frame must fit one phone screen (about 590px under the nav). Closed rows are 34px, the open card is compact, the "Issued by" row and the who-label are hidden on phones.
- Tapping a card scrolls to its slot, so tap and scroll never disagree. Desktop keeps the click accordion.
