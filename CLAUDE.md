# GrowDigitalNY: Affiliate Site Prep (Claude Code brief)

You are working on **growdigitalny.com**, a WordPress + Elementor site owned by Rahul.
Goal: get the site ready to run paid ads (Microsoft Ads first, then Google Ads) for
affiliate offers. Work through the task list below in order.

## Brand positioning

GrowDigitalNY is a **global, remote-first digital marketing and web development agency**. It is
not a local agency: don't target or limit copy to any city, region or country, and don't write
"near me" or single-town service pages.

- **Who we serve:** international startups, SaaS companies and online businesses (ecommerce,
  creators, B2B services that sell online), wherever they're based.
- **Core services:** web design and development (conversion-focused sites, scalable global web
  architecture, speed, multilingual/multi-region builds), SEO (technical, content, international
  SEO and AI search visibility) and digital lead generation (search ads, paid social including
  LinkedIn, landing pages, nurture automation, attribution).
- **How we work:** remote-first and async. Written updates, shared project boards and scheduled
  video calls across time zones. Working hours, time zones covered, currencies invoiced and
  contract terms are `[VERIFY]` until Rahul confirms them.
- **Voice:** conversational and peer-to-peer (see **Voice and tone** below), in plain international
  English (US spelling).
- **Global compliance:** assume visitors and leads may be in the EU/UK, so mention consent and
  privacy where relevant (GDPR/PECR, CAN-SPAM, CASL). Don't give legal advice; recommend legal review.
- The **"NY"** in the brand name is just the name. Don't present it as a service area.
- Service pages live in `content/services/` (`/web-design-development-services/`, `/seo-services/`,
  `/lead-generation-services/`). Affiliate reviews and comparisons live in `pages/`.

## Verification standard (every feature and price)

- **Official sources only.** A feature, plan name, price, limit, trial length or affiliate term counts
  as verified only when it's confirmed on the vendor's **own** site (pricing page, docs, help center
  or affiliate terms), with the date checked. Third-party reviews, aggregators and AI answers are
  hints, not proof.
- **Anything else gets `[VERIFY: what to check, where]`**, highlighted on the page and listed in the
  file's BEFORE PUBLISHING checklist. Third-party figures can go in that checklist as hints, never on
  the page as fact.
- **No offline guessing:** if you can't reach the vendor's site in a session, say so and mark it `[VERIFY]`.
- **Unique content:** write from the vendor's own documentation and Rahul's real experience. Never
  reword another site's review, and never make two pages near-duplicates of each other.

## Disclosures and CTAs (every page)

- **Affiliate pages** (reviews, comparisons, guides with affiliate links): the FTC disclosure box
  from `gohighlevel-review.html` sits at the top, **before the first affiliate link**, and links to
  `/affiliate-disclosure/`. Every affiliate link uses `target="_blank" rel="sponsored nofollow noopener"`.
- **Service pages** carry **no affiliate links**, so they don't need the disclosure box. If an
  affiliate link is ever added to one, the disclosure box becomes required.
- **Non-affiliate reviews and guides** have no disclosure box but do have the "No affiliate links" line
  (see the next section).
- **Every page** (reviews, comparisons, guides and service pages) has **at most 3 CTA buttons**
  (`.btn`). In-text links in a comparison table don't count as buttons, but keep them clearly
  labeled ("Visit Rytr").
- A disclosure that is hidden, tiny, only in the footer, or placed after the first affiliate link
  doesn't count.

## Non-affiliate reviews and guides

We publish in-depth, honest reviews and guides for trending 2027 tools **whether or not they have an
affiliate program**. These pages build Grow Digital NY's authority and rank on their own, and we can
monetize them later without a rewrite.

- **Same quality bar as affiliate pages:** 2027 titles, year-less slugs, the conversational voice,
  real pros **and** cons, who it's *not* for, alternatives, FAQ, and the **Verification standard**.
  The lack of a commission is never a reason to be harsher or softer about a tool.
- **No FTC affiliate disclosure box** when the page has no affiliate links. Instead, add one plain
  line under the byline: *"No affiliate links on this page. We don't earn anything if you sign up."*
  It's honest and it builds trust. **Disclose any other material connection**, though: a free or
  comped account, a partnership, or a client who makes the tool. Those still need a clear note.
- **Up to 3 helpful, non-affiliate CTA buttons**, for example:
  - "Visit Official Site": the vendor's homepage or pricing page, `target="_blank" rel="noopener"`
    (no `sponsored`, no `nofollow` needed)
  - "Read Case Studies": **only** if a real case-studies page exists (the vendor's or ours). Never
    link to a placeholder or invent one.
  - "Book Agency Strategy Call": links to `/contact-us/`, for readers who want help implementing the tool
- **Monetization placeholder:** next to every outbound "Visit Official Site" CTA, add the HTML comment
  `<!-- [AFFILIATE LINK: PENDING] -->`, and list the page under "Monetize later" in the file header.
  **Never put the placeholder in an `href`.** A live page must not have broken links.
- **When an affiliate link becomes available**, do all of this in one change, then log it in CHANGELOG:
  1. Add the clean link to the table above.
  2. Swap the `href`s next to each `[AFFILIATE LINK: PENDING]` comment and change their `rel` to
     `sponsored nofollow noopener`.
  3. Add the FTC disclosure box at the top, before the first affiliate link, and remove the
     "No affiliate links" line.
  4. Re-check the 3-button limit and the page's claims.
- **Authority signals (all real, never invented):**
  - original screenshots
  - links to the vendor's official docs for every key claim
  - a short author note
  - "how we evaluated this" (what we actually did: read the docs, used the free plan, set it up for a
    client, and so on)
  - a real "Updated" date

## Dates and future-proofing (2027)

Content should look current through 2027, so it doesn't need re-dating next month.

- **Titles, H1s, meta titles/descriptions, guide names and "pricing (YYYY)" headings use 2027**,
  e.g. "Rytr Review 2027", "Best AI Writing Tools 2027", "The 2027 Guide to SaaS SEO".
- **New URLs have no year:** `/rytr-review/`, not `/rytr-review-2027/`. Then next year's update only
  changes the title, and rankings and backlinks stay on one URL. **Live URLs that already contain a
  year (e.g. `/jasper-ai-review-pricing-2026/`) keep their URL.** Update the title to 2027 when you
  fix the page, and change a live slug only with a 301 redirect and Rahul's OK.
- **Factual dates stay true.** "Updated <Month YYYY>" bylines, "Prices checked <date>" notes, legal
  effective dates and the CHANGELOG use the real date the work was done, never a future date. A
  future "updated" or "checked" date is misleading to readers, and Google, Microsoft and the FTC all
  treat misleading claims as a problem.
- **Copyright notices** use the current year automatically (a dynamic year in the theme footer,
  e.g. `© <?php echo date('Y'); ?>` or a "current year" shortcode). They roll over to 2027 on
  January 1 without anyone touching them. Don't hard-code a future year.
- In body copy, prefer timeless wording ("today", "currently", "at the time of writing") over a
  specific year, unless the year is the point.

## Voice and tone

Write like an experienced marketer explaining things to a friend who runs a business: someone
who's done the work and is being straight with them.

- **Conversational, peer-to-peer.** Use "you" and "we", contractions and short sentences. Explain
  things the way you'd say them out loud. It's fine to have an opinion ("We'd skip the Starter plan
  unless…").
- **Honest first.** Every review gives clear pros **and** cons, says who should *not* buy, and names
  a cheaper or better alternative when there is one. Honesty is what makes affiliate content convert:
  readers click when they trust the recommendation.
- **Practical.** Give the reader a decision and a next step: which plan, what to set up first, what
  to watch out for. Use concrete examples over abstract claims.
- **No robotic or corporate language.** Avoid "leverage", "utilize", "synergy", "robust",
  "seamless", "cutting-edge", "unlock the power of", "in today's fast-paced digital landscape",
  "delve", "elevate" and "game-changer". No filler intros and no "In conclusion".
- **No fake hype.** No exaggerated superlatives, fake urgency or invented scarcity. The rules in
  ground rule 4 (no fake trust signals, `[VERIFY]` for unverified facts) still apply in full, and a
  conversational tone never permits implying hands-on testing that didn't happen.
- **Conversion without pressure.** Calls to action are specific and low-pressure ("Try the free plan
  on one real task"), with at most 3 CTA buttons per page.

## WordPress publishing workflow

Every page in `pages/`, `content/services/` and `legal/` is a single HTML file built to paste into
WordPress. Follow this for every page, current and future.

**File format (for anyone generating pages):**
- One file per page: an HTML comment header (title, slug, BEFORE PUBLISHING checklist, meta title
  and description), then one `<div class="gdny">` wrapper holding everything else, including its own
  scoped `<style>` block. No `<html>`, `<head>` or `<body>` tags, no external CSS, JS or fonts, and no
  iframes unless needed.
- **The header comment is for us, not the public.** Never put the text `-->` inside it (it would
  close the comment early), and keep the instruction "paste from the opening .gdny div" in HOW TO USE.
- Styles come from the **master stylesheet** `assets/gdny-master.css` (tokens, components, mobile
  breakpoint last). Each page also carries the rules it uses inline, so it works on its own.

**Pasting into WordPress:**
1. **Use a Custom HTML block** (Gutenberg) or an **Elementor HTML widget**. Don't paste into the
   Classic or visual editor or a Paragraph block. They add stray `<p>`/`<br>` tags, and for users
   without the `unfiltered_html` permission (anyone who isn't an admin, and multisite users) WordPress
   strips `<style>` and `<script>`, which breaks the styling and the FAQ markup.
2. **Copy from the opening `<div class="gdny">` to the end of the file. Never paste the header
   comment.** It would sit in the public page source with our internal notes and price hints.
3. **One H1:** set the WordPress title to the page's H1 text and hide the theme's title (Elementor:
   *Hide Title*; most themes have a per-page option), or delete the in-page `<h1>`.
4. **SEO fields:** set the slug from `Slug:`, and paste the meta title and description into Yoast or
   Rank Math. If the SEO plugin also outputs FAQ schema for the page, remove one copy so the FAQ
   markup isn't duplicated.
5. **Save as a draft**, preview on desktop and phone, then publish only after the pre-publish check passes.
6. **Optional, recommended:** paste `assets/gdny-master.css` once into *Appearance → Customize →
   Additional CSS* (or Elementor *Site Settings → Custom CSS*). After that, a page's inline `<style>`
   block is optional.

**Pre-publish check (required):** run `python3 tools/prepublish_check.py <file>` before pasting. It
blocks publishing while any of these are true:
- a `[VERIFY]` tag or placeholder is left on the page
- the page has more than 3 CTA buttons
- a placeholder is used as a link target
- an external link is missing `noopener`
- an affiliate link isn't `sponsored nofollow noopener` with `target="_blank"`
- the page has affiliate links but no disclosure box (or still says "No affiliate links")
- the page has more than one H1, invalid JSON-LD, or a header comment that's been broken
- the meta title or description is too long

It also warns about leftover `[AFFILIATE LINK: PENDING]` markers (fine to publish), date problems and
banned phrases.

## Link and placeholder hygiene

- **3 CTA buttons max on every page.** Text links in tables and tool sections don't count, but keep
  them clearly labeled.
- **Until an approved affiliate link is in the link table, link to the vendor's clean official URL**
  (homepage or pricing page, with no tracking parameters), using `target="_blank" rel="noopener"`.
  Put `<!-- [AFFILIATE LINK: PENDING] -->` immediately before every such outbound button and tool link.
  Never put a placeholder in an `href`.
- **Affiliate sources:** direct programs, networks (Impact, PartnerStack, FirstPromoter and so on),
  and marketplaces such as **JVZoo** and **WarriorPlus** are all fine once Rahul supplies the link and
  it's added to the table. Marketplace offers need extra care before we promote them:
  - Check the product is real and does what it says.
  - Never repeat the vendor's income or results claims ("make $500/day"). That's an FTC risk.
  - Don't promote an offer you couldn't honestly recommend.
  - Google and Microsoft Ads often reject "make money online" landing pages, so check ad policy
    before running paid traffic to them.
- **When a link arrives:** follow the monetize-later steps in "Non-affiliate reviews and guides".
  Swap the `href`, change `rel` to `sponsored nofollow noopener`, add the disclosure box, remove the
  "No affiliate links" line, re-run the pre-publish check and log it in CHANGELOG.
- **`[VERIFY]` tags stay on** every price, free-tier limit, plan detail and plan-gated feature until
  someone confirms it on the vendor's official site. Removing the tag *is* the sign-off, so only do it
  after checking, and update the "Prices checked" date to the real date.

## Hosting: Hostinger

growdigitalny.com is hosted on **Hostinger**. Rahul isn't sure which plan he's on, so **detect before
you act**. The `/hostinger` command handles this.

- **Connection options, in order of preference:**
  1. **SSH + WP-CLI.** Available on some Hostinger plans `[VERIFY: which plans]`. Turn it on in
     *hPanel → Advanced → SSH Access*, which also shows the host, username and port. Hostinger's
     shared-hosting SSH port is usually **65002**, not 22 `[VERIFY in hPanel]`. WP-CLI (`wp`) is
     normally preinstalled. The WordPress path usually looks like
     `/home/<user>/domains/growdigitalny.com/public_html` `[VERIFY]`.
  2. **WordPress REST API** with an Application Password. Works on every plan.
  3. **hPanel by hand.** For anything else (backups restore, staging, DNS, SSL, PHP version), give
     Rahul exact click-by-click steps rather than guessing.
- **WordPress MCP (Hostinger AI plugin).** The project's `.mcp.json` defines the
  `growdigitalny-wordpress` MCP server. It goes through `@automattic/mcp-wordpress-remote` to
  `https://growdigitalny.com/wp-json/mcp/mcp-adapter-default-server`, and authenticates with the same
  `WP_USER` / `WP_APP_PASSWORD` from the environment.
  - **No secrets in `.mcp.json`:** it only references `${WP_USER}` and `${WP_APP_PASSWORD}`.
    Start Claude Code with them loaded: `set -a; . ./.env; set +a; claude`.
  - **Requirements:**
    - the Hostinger AI plugin is active (preinstalled on Business and Cloud plans `[VERIFY]`; otherwise
      *Plugins → Add New → search "Hostinger"*)
    - *Hostinger Tools → "Disable application passwords"* is **off**
    - Node.js is installed locally
  - **Use a dedicated WordPress user** (e.g. `claude-code`, role **Editor**) with its own Application
    Password, so access can be revoked without touching Rahul's admin login. On a single-site install,
    Editors keep `unfiltered_html`, so Custom HTML pages save intact.
  - **MCP tools follow every ground rule:** back up before changes, create drafts only, show Rahul the
    plan and wait for his yes, never publish or delete, and log changes. Listing or reading content is
    fine without asking. Check what the abilities do (`/mcp`) before using a new one.
  - Run `/mcp` in Claude Code to confirm the server is connected. Cloud sessions usually can't reach
    the site, so use it from Rahul's own computer.
- **Use SSH keys, not passwords.** Rahul adds his public key in *hPanel → SSH Access → SSH keys*.
  Never ask for or store an SSH password or private key in the repo or chat.
- **Run hosting work from Claude Code on Rahul's own computer**, where his SSH key and `.env` live.
  Cloud sessions usually can't open SSH connections or reach the site.
- **Backups:**
  - Before any change, run `wp db export` to a timestamped file on the server, plus the REST JSON
    backup from ground rule 1.
  - Hostinger's automatic backups (*hPanel → Files → Backups*) are a safety net, not a substitute.
    Their frequency depends on the plan `[VERIFY]`.
- **Staging:** if the plan includes WordPress staging (*hPanel → WordPress → Staging*, `[VERIFY]`
  plan), test risky changes such as plugin updates, theme changes and search-replace there first.
- **Never, without Rahul's explicit OK for that specific action:**
  - update, delete or deactivate plugins or themes
  - run `wp search-replace` on the live database
  - edit `wp-config.php` or `.htaccess`
  - change DNS, SSL, PHP version or caching (LiteSpeed Cache)
  - delete files or posts
  - publish anything
- **Caching:** Hostinger sites usually run **LiteSpeed Cache**. After creating or updating a page,
  purge that page's cache (or ask Rahul to) before checking the live result.

## How you access the site

- Use the **WordPress REST API** with the credentials in `.env`
  (`WP_URL`, `WP_USER`, `WP_APP_PASSWORD`). Use Basic Auth with the application password.
- If `SSH_HOST` is set in `.env`, you may use **WP-CLI over SSH** (Hostinger: `ssh -p "$SSH_PORT"
  "$SSH_USER@$SSH_HOST"`, then `wp --path="$WP_PATH" …`). Prefer it for Elementor content and SEO
  meta fields that the REST API can't write. See **Hosting: Hostinger**.
- Never print, log or commit the contents of `.env`.

## Ground rules (follow every time)

1. **Back up first.** Before changing any existing page, save its current content
   (REST `GET` with `context=edit`, including `meta`) to `backups/<slug>-<timestamp>.json`.
2. **Draft first.** Create new pages with `status: draft`. Don't publish or change a
   live page's status until Rahul says "publish" for that page.
3. **Show before you change.** Before editing a live page, show a short summary of the change
   and wait for approval. Batch related changes into one approval where you can.
4. **No fake trust signals.** No invented testimonials, star ratings, user counts or
   "we tested" claims. Don't state a price, commission or trial length you haven't
   verified on the vendor's own site; mark anything unverified as `[VERIFY]`.
5. **Affiliate links** must be the clean links in the table below, with
   `rel="sponsored nofollow noopener"` and `target="_blank"`. Never chain several
   referral codes in one URL.
6. Every affiliate page gets the **disclosure box** at the top
   (copy it from `gohighlevel-review.html`) and a link to `/affiliate-disclosure/`.
7. Keep a running log of everything you change in `CHANGELOG.md`.

## Clean affiliate links

| Offer | Link | Status |
|---|---|---|
| GoHighLevel (trial) | https://www.gohighlevel.com/pro-trial?fp_ref=d4ry58 | Priority. Rahul must confirm which fp_ref is his (d4ry58 vs rahuldasshawon) |
| GoHighLevel (certifications) | https://www.gohighlevel.com/certifications?fp_ref=rahuldasshawon | Secondary |
| GetResponse | https://www.getresponse.com?a=VM3AQVMQxV | Priority. Brand bidding not allowed |
| Jasper | https://jasper.ai/pricing?fpr=rahuldasshawon | Active |
| Copy.ai | http://www.copy.ai/?via=rahul-das | Active |
| Rytr | https://rytr.me/?via=rahul-das | Active |
| Writesonic | https://writesonic.com?via=rahuldasshawon | Active. Now an AI-search-visibility/GEO platform |
| Simplified | https://simplified.com/?fpr=rahul47 | Active |
| ContentBot | https://contentbot.ai?fpr=rahul57 | Active |
| ParagraphAI | https://paragraphai.com?ref=rahuldasshawon | Active |
| Neuroflash | https://app.neuro-flash.com/free?fpr=rahuldasshawon | [VERIFY] still active |
| AI-Writer | https://ai-writer.com?via=rahuldasshawon | Active |
| CapCut | https://capcutaffiliateprogram.pxf.io/c/6095404/1876054/22474 | Organic/social only |
| Appy Pie | https://appypie.pxf.io/c/6095404/3836762/50341 | Organic/social only |
| PopAI | https://01aipteltd.pxf.io/c/6095404/3106551/38580 | Organic/social only |
| GearUP Booster | https://gearup.sjv.io/c/6095404/3204502/40222 | Organic/social only |
| ~~Copysmith~~ | (do not use) | Individual plans shut down; remove everywhere |
| Systeme.io | `[VERIFY: Rahul to join and paste clean link]` | **Pending.** All-in-one funnels, email, courses and website builder for solopreneurs and creators. Affiliate terms `[VERIFY]` |
| beehiiv | `[VERIFY: Rahul to join and paste clean link]` | **Pending.** Newsletter platform for creators and media brands. Partner program reportedly tiered and time-limited `[VERIFY]`. Signing up through your own link is not allowed |
| Salesforge | `[VERIFY: Rahul to join and paste clean link]` | **Pending.** AI cold-email outreach platform for B2B sales teams. Affiliate ("Forge Ambassador") terms `[VERIFY]`. Content must stress deliverability and anti-spam law (CAN-SPAM, GDPR/PECR, CASL) |
| Hostinger | `[VERIFY: Rahul to join Hostinger's affiliate program and paste clean link]` | **Pending.** Web hosting, and the host growdigitalny.com runs on. Reviews must say we're a paying customer (honest, and it builds trust). Affiliate terms, including brand bidding and coupon rules, `[VERIFY]` |
| Journeybee | `[VERIFY: does a public affiliate program exist?]` | **Pending.** Partner relationship management (PRM) for B2B SaaS partner programs. No affiliate program found. If there isn't one, cover it without an affiliate link |

**Pending offers:** don't add an affiliate CTA until the clean link is in this table. Until then, write
the page as a **non-affiliate review** (see "Non-affiliate reviews and guides"). It can be published,
and it carries `[AFFILIATE LINK: PENDING]` comments so it's easy to monetize later.

## Live site inventory (from the site's llms.txt, checked 2026-11-16)

**Real URLs. Always link to these, never to redirects:** contact `/contact-us/`, terms
`/terms-conditions/`, privacy `/privacy-policy/`, services hub `/services/`, about `/about-us/`.
`/affiliate-disclosure/` **doesn't exist yet (404)** and must go live before any review.

**Live pages:**
- **Reviews:** `/copy-ai-review-2026/`, `/gearup-booster-review-2026/`, `/popai-review-2026/`,
  `/capcut-review-2026/`, `/appy-pie-ai-review-2026/` (note the `-ai-`), `/jasper-ai-review-pricing-2026/`
- **Industry pages:** `/hotel-motel-marketing/`, `/car-dealership-marketing/`, `/restaurant-marketing/`,
  `/real-estate-marketing/`, `/life-insurance-marketing/`, `/event-management-marketing/`,
  `/salon-beauty-business-marketing/`, `/immigration-lawyer-marketing/`
- **Other:** `/services/`, `/about-us/`, `/about/` (looks empty, a duplicate), `/customer-cabinet/`
  (purpose unknown, check before touching), `/contact-us/`, `/privacy-policy/`, `/terms-conditions/`,
  and the default post `/hello-world/`

**🚨 SITE IS IN "COMING SOON" MODE (checked 2026-11-16).** Every URL served to logged-out visitors
(home, reviews, contact, even `/robots.txt`) returns Hostinger's "Coming Soon" screen with HTTP 200.
Only `/llms.txt` and the sitemap still serve real content. Until Rahul turns it off (*WordPress →
Hostinger → Coming Soon / maintenance toggle* `[VERIFY: exact location]`):
- Google and AI engines see an empty "Coming Soon" site.
- `robots.txt` is invalid (it returns HTML).
- Google and Microsoft Ads will reject ads for an under-construction destination.

Fix the trust-signal problems below **before** switching it off, or at the same time.

**LLM optimization (Hostinger Tools):** the plugin generates `/llms.txt`, a page list for AI tools.
Keep it on, but it lists every published page, so unpublish or fix weak pages and keep drafts out.
It's a proposed standard: helpful and cheap, but not a ranking guarantee. What matters more for AI
search:
- a publicly reachable site
- a valid `robots.txt` that allows the AI crawlers Rahul wants (e.g. GPTBot, ClaudeBot,
  PerplexityBot, Google-Extended)
- pages that answer questions directly
- FAQ schema that matches the visible text
- a real About page with the founder's actual experience
- consistent brand details across the web

**Problems found on live pages (fix with backups and Rahul's OK):**
- **Fake or unverifiable trust signals:**
  - Home: "New York's #1 Digital Agency". An unverifiable superlative is an ad-policy risk, and it
    contradicts the global positioning.
  - Home: stats counters still show 0.
  - Jasper page: "⭐⭐⭐⭐⭐ Trusted by thousands of marketers worldwide".
  - Appy Pie and Copy.ai pages: "Trusted by thousands…" lines.

  All of these break ground rule 4. Remove them or replace them with verified facts.
- **GearUP Booster** is still described as a career tool. It's a gaming ping/lag booster (Phase 3 rewrite).
- **The 8 industry pages are written for New York only** ("NYC", "near me"). That conflicts with the
  global positioning. **Ask Rahul:** rewrite them as global industry pages, or keep a deliberate NY
  local offer. The immigration-lawyer page also needs care: attorney advertising rules apply to the
  lawyers, so don't promise case outcomes.
- **Live Privacy Policy and Terms** are thin. `legal/privacy-policy.html` and `legal/terms.html`
  **replace their content** (back up first). Don't create second pages.
- **Housekeeping (needs Rahul's OK):** delete or redirect `/hello-world/`, merge `/about/` into
  `/about-us/`, and check what `/customer-cabinet/` is for.
- **Site connection facts:**
  - The site has the Hostinger AI plugin, the MCP namespace, Hostinger Tools, Hostinger Reach and an
    Elementor MCP composer.
  - **Application Passwords are currently disabled** (the REST index advertises no auth methods).
    Rahul must turn off *Hostinger Tools → Disable application passwords* before REST or MCP logins work.
  - **Update (later on 2026-11-16):** Application Passwords are now enabled, but **the server strips the
    `Authorization` header before PHP sees it**. Even a deliberately fake login returns
    `rest_not_logged_in` instead of `incorrect_password`. The site is behind Hostinger's CDN
    (`Server: hcdn`). Fix: add the HTTP_AUTHORIZATION pass-through rule at the top of `public_html/.htaccess`
    (back it up first), and/or temporarily disable Hostinger CDN to test. The alternative is the
    Hostinger-hosted agent MCP below, which authenticates through Hostinger instead of the site.
  - **Resolved on the site side (2026-11-16):** Rahul created a real Application Password named
    "Claude Code" (the earlier saved login was his normal password) and added the HTTP_AUTHORIZATION
    rule to `.htaccess`. A `curl -u` from **his own computer returns his user**, so the site, username
    and Application Password work. CDN on/off made no difference.
  - **From the cloud session it still returns `rest_not_logged_in`:** the proxy-saved credential isn't
    being applied yet (possibly a pickup delay after the environment switch). **Reliable path:** Claude
    Code on Rahul's computer with `.env` + `.mcp.json`.
  - `llms.txt` also lists a Hostinger-hosted agent MCP endpoint,
    `websites-agents.hostinger.com/growdigitalny.com/mcp` (auth method `[VERIFY]`).

## Task list (in order)

### Phase 1: Legal and trust pages (required before any ads)
- [ ] Create **/privacy-policy/** (cover analytics, cookies, Meta Pixel, Microsoft/Google Ads
      tracking, affiliate links, contact email). Mark legal details `[VERIFY]`.
- [ ] Create **/terms/**.
- [ ] Create **/affiliate-disclosure/** (FTC-style, plain English).
- [ ] Add a real contact email to the Contact page and the footer. **Ask Rahul which email.**
- [ ] Link all three legal pages in the footer.

### Phase 2: Site-wide cleanup
- [ ] Fix the homepage stats counters that show "0" (Clients Served, Avg. ROI, Retention
      Rate, In Business). **Ask Rahul for real numbers, or remove the section.**
- [ ] Replace or remove dead `#` footer links and off-topic items ("AWS Cost Alerts",
      "Virtual Reality", "API", "Automated Chatbot").
- [ ] Add real URLs to the footer social icons, or remove them. **Ask Rahul.**
- [ ] Make sure the "Unlock the Best AI Tools" newsletter block has a working form,
      or remove it. **Ask Rahul which email tool to connect** (GetResponse is a good fit).

### Phase 3: Fix existing review pages
- [ ] **/gearup-booster-review-2026/**: full rewrite. GearUP Booster is a **gaming ping/lag
      booster** (PC, mobile, console), not a career tool. Fix the title and meta too
      (they currently say PopAI).
- [ ] **/copy-ai-review-2026/**: the title tag, og:title and meta description say PopAI. Fix them to Copy.ai.
- [ ] **/jasper-ai-review-pricing-2026/**: replace the chained referral URLs with the clean
      Jasper link. Add the pricing section the title promises (verify on jasper.ai/pricing).
- [ ] **/capcut-review-2026**: fix the broken `http://Text-to-Speech` link.
- [ ] **All six review pages** (CapCut, Appy Pie, Jasper, PopAI, GearUP, Copy.ai): add the disclosure
      box, a pros AND cons section, a short verdict, alt text on images, and cut repeated CTAs
      to 3 per page. Remove the unrelated agency upsell block from review pages.
      Update their titles, H1s and meta to 2027 and rewrite in the conversational voice above,
      but keep their existing URLs (see **Dates and future-proofing**).

### Phase 4: New landing pages (drafts)
- [ ] **/gohighlevel-review/**: publish the content of `gohighlevel-review.html`
      as a draft page (Custom HTML block or Elementor HTML widget). Leave the `[SCREENSHOT]`
      placeholders for Rahul.
- [ ] **/getresponse-review/**: build it in the same structure and style as the GHL page.
      Angle: email marketing for small businesses and creators. Verify pricing on getresponse.com.
- [ ] **/best-ai-writing-tools/**: one comparison page covering Jasper, Copy.ai,
      Rytr, Writesonic, Simplified, ContentBot, ParagraphAI, Neuroflash and AI-Writer. Include a
      comparison table, a "best for" pick for each tool, honest cons and a verdict.
- [ ] **New 2027 platform reviews** (drafts, year-less slugs): `/systeme-io-review/`,
      `/beehiiv-review/`, `/salesforge-review/`, `/journeybee-review/`. Verify every feature and
      price on the vendor's own site, or mark `[VERIFY]`. Until Rahul's clean links arrive, build
      them as non-affiliate reviews with `[AFFILIATE LINK: PENDING]` comments. Journeybee is likely
      to stay non-affiliate.
- [ ] **Hostinger content** (drafts): `/hostinger-review/` (based on our real experience hosting
      growdigitalny.com, with a true "how we evaluated" note) and `/best-web-hosting/` (a comparison
      ranked by fit, not commission). Until Rahul's affiliate link is in the table, build them as
      non-affiliate pages with `[AFFILIATE LINK: PENDING]` comments. Every price, renewal price and
      plan limit is `[VERIFY]` (hosting promo prices usually differ a lot from renewal prices, so
      always show both).

### Phase 5: Tracking (Rahul may need to do parts by hand)
- [ ] Check whether GA4, Google Tag Manager, Microsoft Clarity and the Meta Pixel are installed. Report what's missing.
- [ ] Suggest a way to track affiliate-link clicks as conversions (e.g., a GTM click trigger on
      `a[rel~="sponsored"]`).

### Phase 6: Final check
- [ ] Crawl every page you touched. Check for broken links, missing disclosures,
      wrong titles/meta and pages left in draft. Give Rahul a short report.
