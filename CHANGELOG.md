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
- LIVE SITE INVENTORY + SITE CONNECTION (2026-11-16):
  - New cloud environment `growdigitalny-site` (personal, only for this repo) with the WordPress login saved as a network secret
    (entered by Rahul in a secure form, never seen by Claude). First read-only test: 401 `rest_not_logged_in`, because Application
    Passwords are disabled on the site. Rahul needs to switch off "Disable application passwords" in Hostinger Tools and create an
    Application Password.
  - From the site's llms.txt (and live URL checks): added a "Live site inventory" section to CLAUDE.md covering real URLs, live pages,
    fake trust signals on Home/Jasper/Appy Pie/Copy.ai, GearUP still wrong, 8 NYC-only industry pages (decision needed), and
    housekeeping items.
  - All drafts now link to the real URLs: `/contact/` -> `/contact-us/`, `/terms/` -> `/terms-conditions/` (13 files).
  - `legal/privacy-policy.html` and `legal/terms.html` are now marked as REPLACING the existing live pages (after backup); the
    terms slug is now `terms-conditions`.
- SITE CHECK (2026-11-16): the whole site is in Hostinger 'Coming Soon' mode for visitors (home, pages, even robots.txt return the Coming Soon screen with HTTP 200; only llms.txt and the sitemap are real). Recorded in CLAUDE.md with LLM-optimization (llms.txt) guidance.
- LOGIN DIAGNOSIS (2026-11-16): Application Passwords enabled and a new Application Password saved, but the Authorization header is stripped before WordPress (a fake-login probe also returns rest_not_logged_in). Site is behind Hostinger CDN (hcdn). Fix steps recorded in CLAUDE.md.
- LOGIN CONFIRMED LOCALLY (2026-11-16): new Application Password 'Claude Code' created; curl from Rahul's computer returns his user, so the site is OK. The cloud session still gets 401 (proxy credential not applied yet). Re-check scheduled in 45 min. Use Claude Code locally in the meantime.
- ROOT CAUSE FOUND (2026-11-16): Hostinger CDN strips the Authorization header. Rahul's local login worked with the CDN off and failed after it was switched back on (/hostinger check on his PC: REST + MCP failing). Claude Code installed on Rahul's Windows PC; MCP server connected (capabilities none until login passes).
- HOSTINGER MCP CONNECTED (2026-11-16): on Rahul's PC, added hostinger remote MCP (mcp.hostinger.com) via claude mcp add and authenticated with OAuth (a private window avoided the impersonation error). CLAUDE.md rules: read-only freely, every change needs Rahul's yes, never domains/DNS/deletes/purchases.
- STATUS (2026-11-16, via hostinger MCP + external check): site now public (Coming Soon off). CDN off, no caching, WP 7.1.4, PHP 8.3, 11 plugin updates pending, admin email differs. Priority: remove the public fake trust signals.
- WORDPRESS LOGIN FIXED (2026-11-16): Hostinger assistant corrected the .htaccess Authorization pass-through; Rahul's local curl now returns his user (rahul-das, ID 2, edit rights). The cloud session still gets 401 (proxy). Use local Claude Code for WordPress work.
- WORDPRESS MCP WORKING (2026-11-16 00:46): /hostinger check on Rahul's PC: REST + MCP working (~110 abilities), Administrator with unfiltered_html. llms.txt is currently off in Hostinger Tools. Next: trust-signal fixes via MCP, with backup first and approval per page.
- TRUST-SIGNAL CLEAN-UP COMPLETE (2026-11-16): via the WordPress MCP on Rahul's PC, with backups + per-page approval: homepage (#1 label, counters, NY lines, meta) and all 6 reviews (stars/'Trusted by' removed, titles 2026->2027, PopAI title bugs fixed, GearUP meta). Verified externally: 0 stars, 0 'Trusted by', 0 '#1' on all 7 pages. Rahul updated the Elementor plugin; the site was verified OK afterwards.
- ELEMENTOR UPDATE CLICKS DONE (2026-11-16 ~01:25 New York time): all 7 pages re-saved in Elementor (post_content refreshed). Verified externally: no leftovers, CapCut og:image fixed. Elementor plugin now 4.4.0.
- SEO PLAN (2026-11-16): added seo/yoast-plan-2026-11.md with focus keyphrases, SEO titles (≤60) and meta descriptions (≤155) for all 20 indexable pages, noindex proposals (/about/, /hello-world/, /customer-cabinet/), and the SEO priorities beyond Yoast. To be applied by Claude Code on Rahul's PC with backup + one approval table.
- TECH NEWS + WEEKLY BRIEF (2026-11-16): added pages/tech-news.html (block markup: 4 RSS headline feeds, latest Tech Brief posts, product/review links, newsletter slot, 3 CTAs) and the /tech-brief command (weekly curated issue with original commentary, source links and at most 2 honest product mentions; drafts only). Taught prepublish_check.py the WordPress block-markup format. CLAUDE.md section added.
- DAILY BRIEF (2026-11-16): /tech-brief now supports 'daily' (last 24h, 3-5 stories) with strict verification (trusted/official sources, big claims double-sourced, skip the issue if <3 verified, visible corrections). A scheduled morning run may create a WordPress DRAFT only. CLAUDE.md updated.
- MU-PLUGIN (2026-11-16): /tech-news/ draft created (page 4272, category Tech Brief = 12, all 4 feeds rendering). Added wp-mu-plugins/gdny-feed-cache-30min.php (RSS cache 30 min) + README; Rahul to upload to wp-content/mu-plugins/.
- LEGAL PAGES FILLED (2026-11-16): operator Rahul Das (sole proprietor, LLC not yet registered), contact@growdigitalny.com, mailing address, NY / Queens County courts, networks Impact/FirstPromoter/Rewardful; 'English version is official' line added. Remaining [VERIFY]: publish dates, sponsored-posts statement, newsletter tool, installed tracking tools, cookie banner, GPC, GA4 retention. Business details and language plan recorded in CLAUDE.md.
- MONETIZATION (2026-11-16): Rahul wants sponsored content + Google AdSense. Affiliate disclosure updated (sponsored content always labeled, display ads by AdSense); privacy policy gained the required AdSense cookie/opt-out section + table row ([VERIFY] until ads/CMP are live). CLAUDE.md monetization rules added (rel=sponsored, no link selling, ads.txt, certified CMP for EEA/UK, placement rules, no self-clicks).
- GTRANSLATE (2026-11-16): installed + active on the live site by Claude Code on Rahul's PC (settings not saved yet, so no menu visible). Added a translation-tool paragraph (Google Translate, googtrans cookie, English official) to legal/privacy-policy.html. Tech Brief: the MCP endpoint rejects the Contributor login; local Claude proposed a REST post-brief-draft.ps1 step (drafts only, category 12), pending Rahul's yes.
- PROJECT_MEMORY.md (2026-11-16): one-page handoff summary for any Claude session; linked from the top of CLAUDE.md.
- LEGAL PAGES LIVE (2026-11-16): /privacy-policy/ and /terms-conditions/ replaced, /affiliate-disclosure/ created (ID 4276), via MCP on Rahul's PC with backups. contact@ mailbox tested; CF7 sends to it; email added to the Contact page and footer. Verified externally (200, one H1, email present, 0 [VERIFY]).
- COMPLIANCE BATCH LIVE (2026-11-16): verified externally on the 6 reviews (disclosure first, 0 links without sponsored, no chained or click-ID links) + H1s on salon and immigration. Title bands look fine on desktop; on mobile they're too large (4-line H1, nearly a full screen). LiteSpeed purge not needed (cache inactive); share text already clean, so the Elementor re-save isn't needed for Yoast.
- MOBILE AUDIT (2026-11-16): seo/mobile-audit-2026-11-16.md: no overflow, readable text, fast loads, but the homepage hero is broken on phones (huge clipped H1, empty top), oversized title bands on the industry/services/about pages, and slow LCP (home 8.8 s; images). A Mobile-first rule was added to CLAUDE.md.
- SITE STRUCTURE (2026-11-16): added pages/blog.html (Blog hub linking all comparisons, reviews and Tech Briefs; mobile-checked: 1 column, 44px taps, no overflow). CLAUDE.md: duplicate cleanup (/about/ -> 301 /about-us/), Blog in menu, draft-publishing pipeline (verify on vendor sites from Rahul's PC), image and video rules.
- PUBLISHING PROGRESS (2026-11-16, verified externally): LIVE: /gohighlevel-review/, /getresponse-review/ (0 [VERIFY], 3 CTAs, disclosure first, sponsored rel OK, mobile OK), /blog/ (8 cards, no broken links). /hello-world/ trashed. Still 404 (not yet published): 4 comparisons (verified, awaiting Rahul's 'publish'), 11 other reviews, 3 service pages, /tech-news/. /about/ still live (301 pending). Header/footer link fix in progress in Claude Code.
- CLOUD SESSION ACCESS (2026-11-16, ~11:20 UTC): re-saved the WordPress Application Password as a network secret (username + app password) and the cloud session now logs in (REST returns Rahul Das, administrator). Added 20 official vendor sites to the cloud environment's allowed hosts (GHL, GetResponse, Rytr, Writesonic, Simplified, ContentBot, ParagraphAI, neuroflash, AI-Writer, Systeme.io, beehiiv, Salesforge, Jasper, Copy.ai, MailerLite, Kit, Mailchimp); a second batch (Klaviyo, Brevo, ActiveCampaign, Substack, Ghost, AI SDR vendors, Journeybee, news feeds) was rejected. No WordPress changes from the cloud: Rahul's PC session was already running the "publish everything" batch (drafts 4278 GHL and 4279 GetResponse created 11:17 UTC, verified), so the cloud session stood down to avoid duplicates. `/hello-world/` was already in the trash.
- BATCH 1 LIVE (2026-11-16, ~11:23 UTC, done by Claude Code on Rahul's PC; synced to GitHub by the cloud session):
  - Published `/gohighlevel-review/` (page 4278) and `/getresponse-review/` (page 4279): every price verified on the vendor sites, [SCREENSHOT] boxes removed, Yoast titles/descriptions set, disclosure box first, 3 affiliate links each with `sponsored nofollow noopener`, valid FAQ markup, no sideways scroll at phone size. GHL uses fp_ref=d4ry58 until Rahul confirms his code. No ads on "GetResponse" brand keywords.
  - Created `/blog/` as **draft 4282** (default editor, theme title hidden, Yoast set): kept the 8 cards for live reviews; removed the 15 cards for unpublished pages, the Comparisons section, the Tech news section and the Tech News button. Restore them from `pages/blog.html` (the full master) as those pages go live.
  - Cloud sync: `pages/gohighlevel-review.html` and `pages/getresponse-review.html` now mirror the live content (pulled read-only from WordPress); raw copies of pages 4278, 4279 and draft 4282 kept only in the cloud session's local `backups/` folder (git-ignored on purpose, so not on GitHub); the trimmed blog draft can be re-pulled from WordPress page 4282. All three pass `tools/prepublish_check.py` (which already accepts block-markup pages). The PC's `prepublish_check.js` and its local backups are not on GitHub.
  - Still open: GHL referral code; `/about/` 301 line in `.htaccess` then trash `/about/`; `/customer-cabinet/` decision; Blog publish + "Blog" menu item after Rahul's yes.
- LINK CHECK (2026-11-16, cloud, read-only): 25 pages published, 4 page drafts (blog 4282, tech-news 4272, 2 old Elementor copies) + brief post 4273; 18 repo pages not on WordPress yet. 70 unique links: all internal links OK, jump links OK; 20 dead `#` header/footer links on every page; Privacy/Terms/Affiliate Disclosure not linked in the footer; 19 outbound links untestable from the cloud (network policy). Rule added: always give Rahul a Claude Code prompt for his PC.
- PC WORK SYNCED TO GITHUB (2026-11-16, ~12:15 UTC, cloud session, read-only from WordPress):
  - Done on Rahul's PC and verified live from the cloud: `/blog/` published (page 4282, 11:32 UTC) with "Blog" in the main menu; footer rebuilt (Option A): 0 dead `#` links, links to About, Services, Blog, Contact, Privacy Policy, Terms & Conditions and Affiliate Disclosure; theme skip link disabled (Rahul approved "yes A + skip link"). Footer/header backup on Rahul's PC: `backups\header-footer-templates-20261116-065235.json`. Social icons left for later (Rahul's choice).
  - Batch 2 drafts created on the PC: `/best-ai-writing-tools/` (4285), `/best-email-marketing-tools/` (4286), `/best-newsletter-platforms/` (4287), `/best-ai-sdr-tools/` (4288). 0 [VERIFY], all pass the pre-publish check. Email and newsletter comparisons link to each other, so publish them together.
  - `pages/blog.html` and the 4 comparison files now mirror WordPress (the full original blog layout is in commit 318542f).
- GITIGNORE (2026-11-16, cloud): added logs/, .claude/settings.local.json, *.log, *.zip and scratchpad/ so the PC's local logs, settings and safety zips can never be committed when the PC folder is linked to GitHub.
- SMOKE TEST (2026-11-16): seo/smoke-test-2026-11-16.md: 31 URLs all 200, phone layout OK (home hero fixed), 1 H1 everywhere, 0 broken internal links, affiliate compliance OK, legal footer links everywhere. To fix: speed (home LCP 8.0 s), public elementor-hf template pages, duplicate /about/, 2 dead # links on 2 pages, GTranslate settings, 15 pages still unpublished.
