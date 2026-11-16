# Smoke test: growdigitalny.com (2026-11-16, phone first, read-only)

Scope: all 31 URLs in the sitemap, iPhone 13 emulation, Lighthouse mobile on key pages, internal link check.

## Passed ✅
- **All 31 URLs return 200**; a missing page correctly returns 404; robots.txt is valid (Yoast); the sitemap works.
- **Phone layout:** no sideways scrolling on any page. The homepage hero is fixed (H1 fits, intro and CTA on the
  first screen).
- **Exactly one H1 on every page**; meta descriptions on every real page.
- **0 broken internal links** (29 unique internal links checked).
- **Affiliate compliance:**
  - every affiliate link has `rel="sponsored nofollow"` and `target="_blank"`
  - the disclosure appears before the first affiliate link on all review and comparison pages
  - at most 3 affiliate CTA buttons per page
- **No `[VERIFY]` or placeholders** visible on any live page.
- **Footer:** links to Privacy, Terms and Affiliate Disclosure on every page; dead `#` links removed site-wide
  (except 2 noted below).
- **Now live:** the GHL and GetResponse reviews, the 4 comparisons, /blog/ and the 3 legal pages.
- The JS console errors seen are test-environment artifacts (GTM and Hostinger Reach blocked by the test proxy),
  not site errors.

## Needs fixing ⚠️
1. **Speed:** homepage LCP **8.0 s** (performance 63); GHL review LCP 4.1 s (79). The target is <2.5 s. Images
   are the main cause. Enable LiteSpeed Cache (image optimization, WebP, lazy-load, browser cache).
2. **Elementor template pages are public and in the sitemap:** `/elementor-hf/header/`, `/elementor-hf/footer/`,
   `/elementor-hf/before-footer/`. Exclude them from the sitemap and noindex them: Yoast → Settings → Content types →
   (Elementor Header & Footer) → "Show in search results: Off".
3. **Duplicate `/about/` is still live** (no meta description). Trash it and add a 301 redirect to `/about-us/`.
4. **`/customer-cabinet/`** has no meta description. Decide: noindex it, or describe it.
5. **2 dead `#` links each** on `/event-management-marketing/` and `/life-insurance-marketing/` (inside the page
   content, not the footer).
6. **Content too low on phones:** `/about-us/` (first paragraph about 1,700 px down) and
   `/immigration-lawyer-marketing/`.
7. **Language menu not visible:** GTranslate is active but its settings haven't been saved yet.
8. **Not yet published (404):** 11 reviews (Rytr, Writesonic, Simplified, ContentBot, ParagraphAI, neuroflash,
   AI-Writer, Systeme.io, beehiiv, Salesforge, Journeybee), 3 service pages, and /tech-news/.
9. **Couldn't test from the cloud** (blocked by the test network): the http→https and www→non-www redirects, and
   outbound affiliate and vendor links. Test these from Rahul's PC.
