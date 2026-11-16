# Yoast SEO plan for the live pages (November 2026)

Goal: every indexable page gets one clear **focus keyphrase**, plus a matching **SEO title** (≤60 characters)
and **meta description** (≤155 characters), so the title, description, H1 and intro all target the same search.
Body content is not rewritten in this pass. Where the keyphrase isn't in the page's H1 or intro yet, the
table below gives the smallest wording fix, which needs Rahul's approval.

Rules:
- One keyphrase per page, and never the same keyphrase on two pages (they would compete with each other).
- No location in keyphrases until Rahul decides between the global and the NY-local industry pages.
- No claims we can't back up ("#1", "best", "guaranteed", numbers). Descriptions describe the page honestly.
- Brand in titles: "Grow Digital NY" (not "GrowDigitalNY").
- Yoast's green lights are a writing checklist, not a ranking factor. Don't stuff keywords to turn them green.

| ID | Page | Focus keyphrase | SEO title (≤60) | Meta description (≤155) |
|---|---|---|---|---|
| 6 | Home | digital marketing agency | Web Design, SEO & Lead Generation Agency \| Grow Digital NY | Remote-first web design, SEO and lead generation agency for startups, SaaS companies and online businesses. See our services and book a free call. |
| 4057 | /services/ | digital marketing services | Digital Marketing Services \| Grow Digital NY | Web design, SEO, Google Ads and lead generation services for growing businesses. See what's included in each service and how we work. |
| 4004 | /hotel-motel-marketing/ | hotel marketing | Hotel & Motel Marketing Services \| Grow Digital NY | Hotel and motel marketing that brings in more direct bookings: SEO, Google Ads, social media and a website built to convert travelers. |
| 3931 | /car-dealership-marketing/ | car dealership marketing | Car Dealership Marketing Services \| Grow Digital NY | Car dealership marketing that reaches buyers while they research online: local SEO, Google Ads, inventory ads and lead follow-up. |
| 3924 | /restaurant-marketing/ | restaurant marketing | Restaurant Marketing Services \| Grow Digital NY | Restaurant marketing that fills tables: Google Business Profile, local SEO, social media and ads aimed at hungry customers nearby. |
| 3890 | /real-estate-marketing/ | real estate marketing | Real Estate Marketing for Agents \| Grow Digital NY | Real estate marketing for agents and brokers: SEO, Google Ads, listing promotion and lead capture that turns online searches into clients. |
| 3827 | /life-insurance-marketing/ | life insurance marketing | Life Insurance Marketing for Agents \| Grow Digital NY | Life insurance marketing for agents: search ads, SEO and lead generation that reach people already looking for coverage. |
| 3802 | /event-management-marketing/ | event management marketing | Event Management Marketing \| Grow Digital NY | Marketing for event planners and event management companies: SEO, ads and social media that bring in more booking enquiries. |
| 3775 | /salon-beauty-business-marketing/ | salon marketing | Salon & Beauty Business Marketing \| Grow Digital NY | Salon and beauty business marketing: Google Business Profile, local SEO, social media and ads that keep your booking calendar full. |
| 268 | /immigration-lawyer-marketing/ | immigration lawyer marketing | Immigration Lawyer Marketing \| Grow Digital NY | Marketing for immigration law firms: SEO and Google Ads that reach people searching for visa and green card help. No outcome promises. |
| 4056 | /jasper-ai-review-pricing-2026/ | Jasper AI review | Jasper AI Review & Pricing (2027) \| Grow Digital NY | (keep the neutral description set on 2026-11-16) |
| 4203 | /copy-ai-review-2026/ | Copy.ai review | Copy.ai Review 2027: Features, Pros & Cons \| Grow Digital NY | (keep the neutral description set on 2026-11-16) |
| 4123 | /appy-pie-ai-review-2026/ | Appy Pie review | Appy Pie AI Review 2027: No-Code Apps \| Grow Digital NY | Our Appy Pie AI review: what the no-code app, website and chatbot builder does, who it suits, the downsides, and what to check on pricing. |
| 4160 | /popai-review-2026/ | PopAI review | PopAI Review 2027: AI Slides & PDF Chat \| Grow Digital NY | (keep its existing PopAI description) |
| 4185 | /gearup-booster-review-2026/ | GearUP Booster review | GearUP Booster Review 2027 \| Grow Digital NY | (keep the gaming-booster description set on 2026-11-16) |
| 4143 | /capcut-review-2026/ | CapCut review | CapCut Review 2027: AI Video Editing \| Grow Digital NY | Our CapCut review: what the AI video editor does for TikTok, Reels and YouTube, who it suits, the downsides, and the free vs paid options. |
| 3950 | /about-us/ | about Grow Digital NY | About Grow Digital NY \| Remote-First Marketing Agency | Who's behind Grow Digital NY: a remote-first agency founded by a search marketing and QA specialist. Our background, approach and values. |
| 3904 | /contact-us/ | contact Grow Digital NY | Contact Grow Digital NY \| Book a Free Strategy Call | Contact Grow Digital NY about web design, SEO or lead generation. Tell us about your business and we'll reply with clear next steps. |
| 3987 | /privacy-policy/ | privacy policy | Privacy Policy \| Grow Digital NY | How Grow Digital NY collects, uses and protects your information, including cookies, analytics, ads tracking and affiliate links. |
| 3967 | /terms-conditions/ | terms and conditions | Terms & Conditions \| Grow Digital NY | The terms for using growdigitalny.com and our marketing services, including affiliate links, accuracy of information and liability. |

**Hide from Google (noindex), needs Rahul's OK:** `/about/` (ID 1490, empty duplicate of `/about-us/`),
`/hello-world/` (post 1, default WordPress post), and `/customer-cabinet/` (ID 292, check what it is first; if
it's a login or account page, noindex it).

**Notes:**
- The meta descriptions for the industry pages describe services in general terms. Check them against the
  real page content, since a description must match what the page actually offers.
- CapCut and Appy Pie descriptions must not mention trials or prices (unverified).
- A focus keyphrase can't fix GearUP's wrong body copy. That page still needs the Phase 3 rewrite.

**SEO work beyond Yoast that matters more for rankings:**
1. Content that really answers the searcher (rewrite GearUP first; deepen the thin industry pages).
2. Google Search Console via Site Kit: confirm it's connected, submit `sitemap_index.xml`, and watch which
   queries already bring impressions.
3. Speed: turn on LiteSpeed Cache (and later the CDN, once it passes `Authorization`).
4. Internal links: link each industry page from `/services/` and from related reviews or posts.
5. Real trust signals: genuine client results and testimonials with permission, a real About page, and a
   contact email.
6. Links from other sites: industry directories, partner sites, guest posts. These take time and can't be faked.
