# Mobile audit: growdigitalny.com (2026-11-16, iPhone 13 emulation + Lighthouse mobile)

## Good ✅
- No horizontal scrolling on any of the 23 live pages; body text is at least 14px everywhere; pages load in about 0.5–3 s.
- CLS 0 (nothing jumps around). Lighthouse best practices 96, SEO 92, accessibility 90.

## Problems (priority order)
1. **Homepage hero on phones:**
   - a large empty dark area at the top
   - the letter-spaced label wraps onto 5 lines
   - the H1 "We Build Brands That…" is so large that **"Brands" is clipped at the right edge**
   - almost nothing useful on the first screen
2. **Title bands too tall on phones:** all 8 industry pages, plus `/services/` and `/about-us/`. The H1 runs 4–6
   giant lines, and the band fills the whole first screen (e.g. Life Insurance: a 324 px H1, first text at 759 px).
3. **`/services/`:** the first paragraph sits about 5,400 px down, after large images. Add a short intro under the H1.
4. **Speed (Lighthouse mobile):** home performance 62 (LCP **8.8 s**), Jasper review 67 (LCP 5.5 s), Contact 82
   (LCP 3.6 s). The target is LCP under 2.5 s. The biggest savings on the homepage are all images:
   - lazy-load offscreen images: ~2.4 s
   - serve WebP/AVIF: ~2.3 s
   - compress: ~1.7 s
   - resize: ~1.7 s

   Plus 67 static files without long cache headers. **Activating LiteSpeed Cache** (installed, inactive) with image
   optimization, lazy loading and browser cache covers most of this. Total page weight is about 1 MB.
5. **Accessibility and SEO flags:**
   - low colour contrast in places
   - form fields without labels
   - "links are not crawlable" (the dead `#` links in the header and footer)

## Rule going forward
Every change is checked on a phone-sized screen first (390×844), then desktop. See "Mobile-first" in CLAUDE.md.
