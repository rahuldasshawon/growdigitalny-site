# Grow Digital NY: project memory (handoff summary, updated 2026-11-16)

Read this first, then `CLAUDE.md` (the full rules), then `STATUS.md` (open items) and `CHANGELOG.md` (history).

## Who and what

- **Owner:** Rahul Das, a sole proprietor trading as **Grow Digital NY** (growdigitalny.com). An LLC is planned but
  **not registered yet**, so never write "LLC". Contact: contact@growdigitalny.com (Hostinger mailbox; Rahul to
  create and test it). Mailing address: 105-18 171st Place, Jamaica, NY 11433. Governing law: NY, Queens County.
- Rahul is **not technical**. Guide him **one small step at a time**, in plain language, and say exactly where to
  click or type.
- **Business:** a global, **remote-first** digital marketing and web development agency (web design, SEO, lead
  generation) for startups, SaaS companies and online businesses. It's **not** a local NY agency any more,
  although 8 NYC-focused industry pages are still live (decision pending).
- **Money:** affiliate reviews and comparisons, agency services, **sponsored content** (always labeled
  "Sponsored", `rel="sponsored"`), **Google AdSense** (not approved yet), and a newsletter (tool not chosen:
  beehiiv or GetResponse).

## Tech setup

- **Site:** WordPress 7.1.4, PHP 8.3, the Hello Elementor theme, **Elementor 4.4.0**, Yoast SEO, Site Kit (GA4),
  Contact Form 7, Hostinger Tools, Hostinger AI and Hostinger Reach, and **GTranslate** (installed and active,
  settings not saved yet). Hosted on **Hostinger** (CDN **off**, LiteSpeed Cache inactive, SSL on). The site is
  **live**: Coming Soon mode is off.
- **Repo:** github.com/rahuldasshawon/growdigitalny-site (branch `main`; it should be made private). It holds the
  source of truth for `CLAUDE.md`, the drafts (`pages/`, `content/services/`, `legal/`), `assets/gdny-master.css`,
  `tools/prepublish_check.py`, `seo/`, `wp-mu-plugins/`, and the commands in `.claude/commands/`.
- **Rahul's Windows 10 PC:** Claude Code 2.1.325 and Node.js are installed, and the project is at
  `C:\Users\rahul\growdigitalny-site-main` (a **ZIP copy, not a git clone**, so local edits don't reach GitHub).
  `.env` holds `WP_USER`/`WP_APP_PASSWORD` (Rahul's admin Application Password) and
  `WP_BRIEF_USER`/`WP_BRIEF_APP_PASSWORD` (the Contributor bot `tech-brief-bot`). **Never print `.env`.**
  - Start Claude Code with `.env` loaded:
    `cd C:\Users\rahul\growdigitalny-site-main; Get-Content .env | Where-Object {$_ -match '^\w+=.'} | ForEach-Object { $k,$v = $_ -split '=',2; Set-Item "env:$k" $v }; claude`
- **Working connections (from Rahul's PC):**
  - **WordPress MCP** `growdigitalny-wordpress` (`.mcp.json`, via `@automattic/mcp-wordpress-remote`, about 110
    abilities). It rejects the Contributor login.
  - The **REST API** with an Application Password.
  - The **Hostinger account MCP** (`claude mcp add --transport http hostinger https://mcp.hostinger.com`, OAuth).
    Read freely; every change needs Rahul's yes. Never touch domains, DNS, mail, deletions or purchases.
- **The login fix story:** Application Passwords were disabled in Hostinger Tools, then the `Authorization`
  header was being stripped. Hostinger's assistant fixed `.htaccess`
  (`RewriteRule … E=HTTP_AUTHORIZATION` + `SetEnvIfNoCase Authorization "^(.*)$" HTTP_AUTHORIZATION=$1`). The CDN
  seemed involved, so keep it off until it's confirmed that it passes `Authorization`.
- **Cloud Claude sessions** can't log in to WordPress (a proxy issue). They can read the public site, edit the
  repo and push to GitHub. Do WordPress work from Rahul's PC.

## Done so far ✅

1. **Legal drafts** (privacy, terms, affiliate disclosure) are filled with the business details, the translation
   and AdSense sections, and the "English version is official" line. Not published yet.
2. **Drafts in `pages/`:**
   - 14 reviews: GHL, GetResponse, Rytr, Writesonic, Simplified, ContentBot, ParagraphAI, neuroflash, AI-Writer,
     Systeme.io, beehiiv, Salesforge and Journeybee (the last four are non-affiliate for now)
   - 4 comparisons: AI writing, newsletters, email marketing, AI SDR
   - 3 global service pages in `content/services/`
   - All verified for mobile layout, ≤3 CTAs, disclosure rules, and valid FAQ schema
3. **Live clean-up** (via MCP, with backups and per-page approval, verified live):
   - removed "New York's #1", the 0/8x counters and the ⭐⭐⭐⭐⭐ "Trusted by…" lines from the homepage and all 6
     live reviews
   - homepage New York lines rewritten for the global positioning
   - review titles changed from 2026 to 2027 (URLs unchanged)
   - the wrong "PopAI" titles fixed
   - all 7 pages re-saved in Elementor
4. **Yoast:** a focus keyphrase, SEO title and meta description on every public page, applied with Claude
   Code's honesty adjustments.
5. **Tech News hub** `/tech-news/` (draft #4272): block-markup RSS feeds (TechCrunch, The Verge, Wired AI, Ars
   Technica), all working, plus product links. The "Tech Brief" category is ID 12. A mu-plugin for a 30-minute
   feed cache is written (Rahul uploads it).
6. **Daily Tech Brief automation:**
   - Windows Task Scheduler runs `automation/run-tech-brief.ps1` at 7:00 AM.
   - Claude researches and writes the files only, with no WordPress access.
   - Then `post-brief-draft.ps1` posts a **draft** (category 12) with the Contributor login.
   - Strict rules: trusted and official sources only, big claims confirmed by two sources, and no issue if fewer
     than 3 stories are verified ("better late than false").
   - The first draft, #4273, **failed the independent check** (none of the 3 headlines confirmed) and must not be
     published until an evidence check is done.
7. **Audits:** `seo/ads-readiness-audit-2026-11-16.md` (not ad-ready yet) and `seo/yoast-plan-2026-11.md`.
8. **Commands:** `/seo-writer`, `/web-builder`, `/ad-manager`, `/hostinger` (check, backup, draft, health) and
   `/tech-brief` (daily or weekly).

## Rules that matter most (details in `CLAUDE.md`)

- **No fake trust signals.** Every price, plan limit or feature must be verified on the **vendor's own site**, or
  marked `[VERIFY]`.
- **Back up → show the plan → wait for Rahul's "yes" → change → verify → log in `CHANGELOG.md`.**
- **Drafts first.** Never publish, delete, update plugins, edit `.htaccess`/`wp-config.php`, or touch
  DNS/domains/mail without an explicit yes.
- **Affiliate pages:**
  - the FTC disclosure box at the top
  - clean links with `rel="sponsored nofollow noopener"`
  - at most 3 CTA buttons
  - organic-only offers (CapCut, PopAI, Appy Pie, GearUP) never get paid ads
  - no brand bidding on GetResponse
- **Non-affiliate pages:** official-site links with an `<!-- [AFFILIATE LINK: PENDING] -->` comment (never in an
  href), and a "No affiliate links" line.
- **2027 in titles; URLs without a year; real dates for "Updated"/"Prices checked"; an automatic copyright year.**
- **Voice:** a conversational peer, honest pros and cons, practical advice, no corporate jargon or hype.
- **Languages:** the free GTranslate menu now (es, hi, bn, ta, te, ur, ar, it, fr, pt, de, zh-CN); SEO
  translations (TranslatePress or Weglot) before any non-English ads.

## Next up (see `STATUS.md`)

1. An evidence check on brief #4273.
2. Create and test the mailbox.
3. Publish the legal pages.
4. Save the GTranslate settings.
5. A compliance batch on the 6 live reviews: disclosure box, `rel="sponsored"`, fixes for the chained Jasper
   links and the GearUP click-ID link, H1s, alt text.
6. Tracking (UET, Google Ads/GTM, Clarity) and a certified cookie banner.
7. Header/footer `#` links.
8. Verify and publish the GHL and GetResponse reviews (the ad landing pages) and the comparisons.
9. Rewrite GearUP and deepen the thin reviews.
10. LiteSpeed Cache, plugin updates, then an AdSense application.

**Rahul's pending answers:**
- are the homepage testimonials real?
- global or NY for the industry pages?
- which GHL referral code: d4ry58 or rahuldasshawon?
- which newsletter tool?
- what is Customer Cabinet for?
- affiliate links for Systeme.io, beehiiv, Salesforge and Hostinger
