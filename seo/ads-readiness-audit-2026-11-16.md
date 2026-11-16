# Ads readiness and SEO audit: growdigitalny.com (2026-11-16, read-only, logged-out view)

**Verdict: not ready for paid ads yet.** The fake trust signals are gone. What's left is mostly fast, mechanical
compliance work, plus a content-depth gap that decides whether we can beat competitors in search.

## Blockers for paid ads (fix first)

| # | Problem | Where | Why it blocks ads | Fix |
|---|---|---|---|---|
| 1 | **No affiliate disclosure page** (`/affiliate-disclosure/` returns 404) and **no disclosure on any live review** | 6 live reviews | FTC rules; Google and Microsoft ads policies (undisclosed affiliate pages count as "bridge" or "unclear relationship" pages) | Publish `legal/affiliate-disclosure.html`; add the disclosure box at the top of each review |
| 2 | **All 27 affiliate links lack `rel="sponsored nofollow"`** | Copy.ai 5, Jasper 5, CapCut 5, PopAI 4, Appy Pie 4, GearUP 4 | Google requires paid links to be qualified; it's also a ranking risk | Add `rel="sponsored nofollow noopener"` and `target="_blank"` |
| 3 | **Broken or chained affiliate links** | Jasper: 5 links contain `fpr=rahuldasshawon%20%20http://www.copy.ai/?…` (two links glued together, so tracking probably fails). GearUP: hard-coded `gearupbooster.com/?irclickid=…` (a one-time click ID, not the clean `gearup.sjv.io` link). Copy.ai: `http://` | Lost commissions, and possibly an ad disapproval for broken destinations | Replace with the clean links from the CLAUDE.md table |
| 4 | **Organic/social-only offers** | CapCut, PopAI, Appy Pie, GearUP reviews | These programs don't allow paid traffic (per the CLAUDE.md link table) | **Never** use these pages as ad landing pages |
| 5 | **No conversion tracking for ads**: GA4 is present, but there's no Microsoft UET tag, no Google Ads tag, no GTM, no Clarity, no Meta Pixel | site-wide | Without tracking, ad spend can't be optimized or measured | Add the Microsoft UET tag (Microsoft Ads first), the Google Ads tag and GTM; track affiliate clicks as conversions (GTM trigger on `a[rel~="sponsored"]`) |
| 6 | **No cookie-consent banner** | site-wide | Google's EU user consent policy and Consent Mode v2 are required for EEA/UK traffic | Add a consent plugin (with Consent Mode v2), or exclude the EEA/UK from campaigns until it's in place |
| 7 | **20 dead `#` links in the header/footer** on every page | site-wide | Poor landing-page experience and lower Quality Score | Replace with real URLs or remove (Phase 2) |
| 8 | **Thin legal and contact pages**: the live Privacy Policy and Terms are short; Contact has 86 words and no email | `/privacy-policy/`, `/terms-conditions/`, `/contact-us/` | Ad reviewers check for clear business identity and policies | Replace with `legal/` drafts; add a real contact email |
| 9 | **GearUP describes the wrong product** (a career tool) | `/gearup-booster-review-2026/` | Misleading content | Full rewrite (it's organic-only anyway) |

## Which pages may receive paid ads (once fixed)

- **Allowed** (paid traffic OK per the link table): GoHighLevel, GetResponse, and the AI writing tools (Jasper,
  Copy.ai, Rytr, etc.). The best landing pages are the **new drafts** (`/gohighlevel-review/`,
  `/getresponse-review/`, `/best-ai-writing-tools/`, `/best-email-marketing-tools/`), once their `[VERIFY]` items
  are checked and they're published.
- **Not allowed:** CapCut, PopAI, Appy Pie, GearUP (organic/social only). No brand bidding on GetResponse.
- Agency service pages (`/web-design-development-services/` etc.) are fine for lead-gen ads once published.

## SEO vs competitors (honest view)

- **The basics are now good:** every indexable page has an SEO title (≤60) and a meta description; HTTPS works;
  robots.txt and the sitemap are fine; there are no broken internal links; server response is fast (~0.25 s TTFB);
  Yoast schema (BreadcrumbList, WebPage, etc.) is present.
- **The gap is depth and trust.** The live reviews have **285–455 words**, with no pros/cons, pricing,
  alternatives or FAQ. Pages ranking top for "<tool> review" are usually far longer, cover pricing,
  pros and cons, alternatives and FAQs, and show first-hand experience. **Thin pages won't outrank them,
  whatever the Yoast lights say.** The new drafts (with verdict, pricing, pros and cons, alternatives, FAQ and
  FAQ schema) are much stronger. Publish them after verification, and rewrite the six live reviews to the same
  standard (Phase 3).
- **Thin key pages:** `/services/` (104 words), `/contact-us/` (86), Jasper (285, even though the title promises pricing).
- **Missing H1:** `/salon-beauty-business-marketing/` and `/immigration-lawyer-marketing/`.
- **Images without alt text:** 3–27 per page (accessibility and image SEO).
- **No page caching** (LiteSpeed Cache is inactive): turn it on for Core Web Vitals once the editing is done.
- **The 8 industry pages are NYC-only**, while the brand is now global. Decide: rewrite as global industry pages, or
  keep a deliberate NY local offer (then add LocalBusiness details and a Google Business Profile).
- **No links from other sites yet** (off-page): directory listings, partner sites, guest posts and real reviews take
  time, and can't be faked.
- `llms.txt` is off in Hostinger Tools (`/llms.txt` returns 404). It's optional, but it's free.

## Offers and pricing

- No live page currently shows verified prices. Jasper's title promises "Pricing" but has no pricing section.
  The new drafts mark every price `[VERIFY]`. Check each on the vendor's own site before publishing, and record
  the "Prices checked" date.

## Recommended order

1. **Compliance batch (Claude Code via MCP, backup + one approval):** disclosure box, plus `rel` and clean links on
   the 6 live reviews; fix Jasper's chained links and GearUP's click-ID link; H1s on salon and immigration;
   alt text on images.
2. **Publish the legal pages:** affiliate disclosure, privacy and terms (needs Rahul's legal name, contact email
   and mailing address).
3. **Tracking:** UET + Clarity + Google Ads tag (GTM), affiliate-click conversions, and a cookie banner with
   Consent Mode v2.
4. **Header/footer cleanup** and a contact email.
5. **Verify and publish** the GHL and GetResponse reviews and the comparisons; these become the ad landing pages.
6. **Phase 3:** rewrite the 6 live reviews to full depth (GearUP first).
7. Turn on LiteSpeed Cache; start building links from other sites.
