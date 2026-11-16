# GrowDigitalNY changelog

## 2026-11-15
- Drafted the Phase 1 legal pages as paste-ready HTML (not yet on the site):
  - `legal/privacy-policy.html` -> /privacy-policy/
  - `legal/terms.html` -> /terms/
  - `legal/affiliate-disclosure.html` -> /affiliate-disclosure/
- Open items: contact email, legal name and address, governing-law county, hosting provider,
  email tool, which tracking tools are installed, affiliate networks in use. All are marked `[VERIFY]` / `[CONTACT EMAIL]`.
- No live pages changed (Claude has no site access).
- Drafted `pages/getresponse-review-2026.html` -> /getresponse-review-2026/ (same structure as the GHL page, 3 CTAs,
  clean link `?a=VM3AQVMQxV`). Prices come from third-party sources and are marked `[VERIFY]`; getresponse.com was unreachable.
- Added custom slash commands in `.claude/commands/`: `/seo-writer`, `/web-builder`, `/ad-manager` (offline, local output only).
  Copied `CLAUDE.md`, `.env.example` and `pages/gohighlevel-review-2026.html` into the project as references.
- Checked `pages/getresponse-review-2026.html` against the /seo-writer rules: shortened the meta description to 146 characters,
  added internal links (/gohighlevel-review-2026/, /best-ai-writing-tools-2026/) and an FTC CAN-SPAM guide link in the FAQ. Prices are still `[VERIFY]`.
- Drafted 7 new affiliate reviews in `pages/`: rytr, writesonic, simplified, contentbot, paragraphai, neuroflash, ai-writer (`*-review-2026.html`).
  Same structure/styles as the GHL page, 3 CTAs each, clean links. All prices `[VERIFY]` (third-party figures conflict; listed in each file's header).
- Drafted `pages/best-ai-writing-tools-2026.html` (9 affiliate tools + Claude/ChatGPT as non-affiliate links; PopAI internal link only, since it's organic/social only).
- STRATEGY CHANGE: GrowDigitalNY is now a global, remote-first agency (startups, SaaS, online businesses).
  - Added a "Brand positioning" section to `CLAUDE.md`.
  - Deleted the unpublished Binghamton/Vestal service drafts and replaced them with global versions in `content/services/`:
    `web-design-development-services.html`, `seo-services.html`, `lead-generation-services.html`.
  - Rewrote `/seo-writer`, `/web-builder` and `/ad-manager` for international clients (ad-manager: Nextdoor replaced by LinkedIn; cold-email rules now cover GDPR/PECR and CASL as well as CAN-SPAM).
- 2027 FUTURE-PROOFING + TONE (2026-11-15):
  - Added "Dates and future-proofing (2027)" and "Voice and tone" sections to `CLAUDE.md`, and the same rules to all three commands.
  - Draft pages renamed to year-less URLs: /gohighlevel-review/, /getresponse-review/, /rytr-review/, /writesonic-review/,
    /simplified-review/, /contentbot-review/, /paragraphai-review/, /neuroflash-review/, /ai-writer-review/, /best-ai-writing-tools/.
    All internal links updated. Live 2026 URLs (Jasper, Copy.ai, PopAI, CapCut, GearUP, Appy Pie) unchanged.
  - Titles, H1s, meta and pricing headings now say 2027. "Updated" and "Prices checked" dates left as the real date (November 2026).
- STANDARDS UPDATE (2026-11-15): mandatory 2027 future-proofing, human readability, verified tech focus, disclosures and CTAs.
  - 2027 dates and voice/tone rules were already in `CLAUDE.md` and the commands (previous update). Kept as is, with factual
    "Updated"/"Prices checked" dates left real and copyright set to an automatic current year (rolls to 2027 on Jan 1).
  - `CLAUDE.md`: added Systeme.io, beehiiv, Salesforge and Journeybee to the link table as **Pending** (no links yet:
    Rahul to join and paste clean links; Journeybee may have no public affiliate program). Added a "Pending offers" rule,
    a "Verification standard" section (vendor's own site only) and a "Disclosures and CTAs (every page)" section.
    Added a Phase 4 task for /systeme-io-review/, /beehiiv-review/, /salesforge-review/ and /journeybee-review/.
  - `/seo-writer`, `/web-builder`, `/ad-manager`: now point to the new sections. They enforce vendor-only verification,
    [AFFILIATE LINK] placeholders for pending offers, no paid ads for pending offers, 3 CTA buttons on every page,
    and Salesforge/beehiiv-specific rules.
  - Check of existing pages: all reviews and comparisons have the disclosure first and ≤3 buttons, and service pages have
    3 buttons and no affiliate links. Fixed `pages/gohighlevel-review.html`: removed the verdict-box button (4 → 3) and made its tables scroll on phones.
- NON-AFFILIATE CONTENT SUPPORT (2026-11-15):
  - `CLAUDE.md`: new "Non-affiliate reviews and guides" section. Honest in-depth reviews for tools without an affiliate program,
    no FTC disclosure box (a "No affiliate links" line instead, plus any other material connection), up to 3 helpful CTAs
    (Visit Official Site / Read Case Studies only if a real page exists / Book Agency Strategy Call), `<!-- [AFFILIATE LINK: PENDING] -->`
    comments next to outbound CTAs (never in an href), a 4-step monetize-later checklist, and real authority signals.
    "Pending offers" rule and the Phase 4 new-platform task updated to use non-affiliate reviews until links arrive.
  - `/seo-writer` and `/web-builder`: added the non-affiliate page type and rules. `/ad-manager` unchanged.
- NEW NON-AFFILIATE REVIEWS (2026-11-15), written to the /seo-writer rules by hand (the command isn't loaded in this session):
  - `pages/systeme-io-review.html` -> /systeme-io-review/
  - `pages/beehiiv-review.html` -> /beehiiv-review/
  - `pages/salesforge-review.html` -> /salesforge-review/ (includes cold-email legal basics: CAN-SPAM, GDPR/PECR, CASL)
  - `pages/journeybee-review.html` -> /journeybee-review/ (likely to stay non-affiliate)
  - All four: 2027 titles, year-less slugs (the request asked for `-2027` file names; kept year-less per CLAUDE.md), conversational voice,
    "No affiliate links" line instead of the FTC box, 3 CTA buttons (Visit Official Site, pricing/listing link, agency strategy call),
    `<!-- [AFFILIATE LINK: PENDING] -->` next to both outbound CTAs, "How we evaluated" box and author line left as [VERIFY] for Rahul.
  - NOT VERIFIED: vendor sites were unreachable from this session. Every price and plan-specific feature is [VERIFY], with third-party
    figures listed in each file's header as hints only. Journeybee's official domain (journeybee.io) also needs confirming.
  - Fixed a template bug before delivery: a nested `-->` in the header checklist would have shown the checklist as page text.
    Scanned all pages: no other header breaks or leaked text.
- NEW COMPARISON (2026-11-15): `pages/best-newsletter-platforms.html` -> /best-newsletter-platforms/ ("Best Newsletter Platforms 2027: 7 Options Compared").
  - Covers beehiiv, Substack, Kit, Ghost, MailerLite, GetResponse and Systeme.io: comparison table, quick picks, one-by-one sections,
    how to choose, verdict, a "How we compared them" box ([VERIFY] for Rahul), and an FAQ with schema markup.
  - Mixed page: GetResponse is the only affiliate link (FTC disclosure box at top, rel=sponsored). The other six use plain links with
    `<!-- [AFFILIATE LINK: PENDING] -->` comments (13 in total). 2 CTA buttons (beehiiv non-affiliate, GetResponse affiliate).
  - Ranked by fit, not commission: beehiiv is the top newsletter pick, and GetResponse is positioned for small businesses needing automation.
  - Not verified: free-plan caps, revenue cuts, Kit feature names and Ghost(Pro) pricing are [VERIFY] (vendor sites unreachable).
- NEW COMPARISON (2026-11-15): `pages/best-email-marketing-tools.html` -> /best-email-marketing-tools/ ("Best Email Marketing Tools 2027: 8 Options Compared…").
  - Covers MailerLite, GetResponse, Klaviyo, ActiveCampaign, Brevo, Mailchimp, Kit and GoHighLevel: comparison table (free plan,
    automation, ecommerce, SMS), quick picks, one-by-one sections, how pricing really works, deliverability basics (SPF/DKIM/DMARC,
    Google sender guidelines), verdict, a "How we compared them" box ([VERIFY] for Rahul), and an FAQ with schema markup.
  - Mixed page: GetResponse and GoHighLevel are affiliate links (disclosure box at top, rel=sponsored). The other six use plain links
    with `<!-- [AFFILIATE LINK: PENDING] -->` comments (13). 2 CTA buttons (MailerLite non-affiliate pick, GetResponse affiliate).
  - Ranked by fit: MailerLite (non-affiliate) is the default small-business pick. Distinct angle from /best-newsletter-platforms/.
  - Added a cross-link from the newsletter page's FAQ to this page.
  - Not verified: free-plan limits, SMS availability, plan gating and Brevo's pricing model are [VERIFY]. GHL fp_ref still to be confirmed.
- NEW COMPARISON (2026-11-15): `pages/best-ai-sdr-tools.html` -> /best-ai-sdr-tools/ ("Best AI SDR Tools 2027: An Honest Comparison (and Whether You Need One)").
  - Fully non-affiliate: no FTC box, a "No affiliate links" line, and `<!-- [AFFILIATE LINK: PENDING] -->` next to all 12 outbound tool links.
  - Covers Artisan (Ava), 11x (Alice), AiSDR, Agent Frank (Salesforge), Regie.ai and Qualified (Piper): a readiness checklist, comparison
    table (type, best for, pricing model, main risk), one-by-one sections, a 5-step pilot plan, compliance and brand risk, verdict
    (hybrid first, inbound before outbound), a "How we compared them" box ([VERIFY]), and an FAQ with schema markup.
  - 2 CTA buttons: Book an Outbound Strategy Call (/contact/) and Read Our Salesforge Review (internal).
  - Not verified: all pricing models, product names and channels are [VERIFY], with third-party hints in the header. The widely repeated
    "50–70% churn" stat is deliberately left out (unverifiable source).
  - Added a cross-link from the Salesforge review's Agent Frank FAQ to this page.
- WORDPRESS MIGRATION WORKFLOW (2026-11-15):
  - `CLAUDE.md`: new "WordPress publishing workflow" section (single-file format, Custom HTML block or Elementor HTML widget only,
    never the Classic/visual editor, never paste the header comment, one-H1 rule, SEO-plugin fields, no duplicate FAQ schema,
    draft then preview) and a "Link and placeholder hygiene" section (3 buttons, clean official URLs plus
    `<!-- [AFFILIATE LINK: PENDING] -->` until a link is approved, JVZoo/WarriorPlus rules, [VERIFY] sign-off).
  - New `assets/gdny-master.css`: master .gdny stylesheet for Additional CSS (all components, mobile breakpoint last).
  - New `tools/prepublish_check.py`: blocks publishing on [VERIFY] tags or placeholders left on the page, more than 3 buttons,
    placeholder hrefs, missing noopener, bad affiliate rel, missing or late disclosure, multiple H1s, invalid JSON-LD,
    a broken header comment and over-length meta. Tested against a deliberately broken page (all problems caught).
  - All 23 pages: HOW TO USE now says to paste from the opening .gdny div (not the header) and covers the one-H1 rule.
  - `/seo-writer` and `/web-builder`: added "WordPress output rules" and a required pre-publish check run
    (seo-writer is allowed to run the checker).
  - Current status: 0/23 pages ready to publish. The only blockers are [VERIFY] tags and content placeholders, with no structural problems.
- HOSTINGER SETUP (2026-11-16):
  - `CLAUDE.md`: new "Hosting: Hostinger" section. Detect the plan first; prefer SSH + WP-CLI (port usually 65002, [VERIFY]),
    then the REST API, then hPanel steps. SSH keys only, run hosting work from Rahul's own computer, back up first, staging
    if available, LiteSpeed Cache purge, and a list of actions that need Rahul's explicit OK. "How you access the site" now
    shows the Hostinger SSH/WP-CLI command.
  - Link table: Hostinger added as **Pending** (Rahul to join and paste the link; we host on it, so say that in reviews).
    Phase 4 task added: /hostinger-review/ and /best-web-hosting/ (promo AND renewal prices, all [VERIFY]).
  - New `/hostinger` command (`.claude/commands/hostinger.md`): `check` (read-only access test with SSH/REST diagnosis),
    `backup` (wp db export outside public_html + REST JSON), `draft <file>` (prepublish check, slug-collision check,
    strips the header comment, wraps the page in a Custom HTML block, creates a DRAFT, sets Yoast/Rank Math meta, never publishes)
    and `health` (read-only status, SSL expiry, available updates listed but never applied). Every change needs Rahul's yes.
  - `.env.example`: added SSH_PORT=65002 and Hostinger hints for SSH_HOST, SSH_USER and WP_PATH.
  - `/ad-manager`: Hostinger added to pending offers (no paid ads yet), plus promo/renewal price and brand-bidding rules.
- WORDPRESS MCP CONNECTION (2026-11-16):
  - New `.mcp.json`: `growdigitalny-wordpress` MCP server, via `npx @automattic/mcp-wordpress-remote`, pointing to
    https://growdigitalny.com/wp-json/mcp/mcp-adapter-default-server (Hostinger AI plugin). Credentials come only from the
    `${WP_USER}`/`${WP_APP_PASSWORD}` env vars, with no secrets in the file. OAuth is disabled (Application Password auth).
  - `CLAUDE.md` Hosting section: MCP requirements, a dedicated Editor user, start command, and MCP tools bound by all
    ground rules (drafts only, Rahul's yes before changes, never publish or delete).
  - `/hostinger`: MCP is now the first connection option, and `check` tests it with a troubleshooting list.
  - Not connected in this cloud session: the placeholder credentials in the request were not used, and the site is blocked from here.
