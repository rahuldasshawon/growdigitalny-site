#!/usr/bin/env python3
"""Pre-publish check for GrowDigitalNY pages, run before pasting into WordPress.

Usage:
  python3 tools/prepublish_check.py pages/rytr-review.html            # one page
  python3 tools/prepublish_check.py pages/*.html content/services/*.html

Exit code 0 = ready to paste. 1 = blocking problems (listed). Uses only the standard library.
BLOCK means don't publish yet; WARN means look before you publish.
"""
import json
import re
import sys
from html.parser import HTMLParser

BANNED = r"\b(leverag\w*|utiliz\w*|synerg\w*|robust|seamless\w*|cutting-edge|delve|elevat\w*|game-changer)\b|unlock the power|fast-paced digital|in conclusion"


class Links(HTMLParser):
    def __init__(self):
        super().__init__()
        self.a = []
        self.h1 = 0

    def handle_starttag(self, tag, attrs):
        d = dict(attrs)
        if tag == "a":
            self.a.append(d)
        if tag == "h1":
            self.h1 += 1


def check(path):
    raw = open(path, encoding="utf-8").read()
    start = raw.find('<div class="gdny')
    block, warn = [], []
    if start == -1:
        return ["no .gdny wrapper div found"], []
    head, body = raw[:start], raw[start:]
    if head.strip() and head.count("-->") != 1:
        block.append("header comment is broken (a nested '-->' closes it early, so notes would show on the page)")

    # 1. verification tags and placeholders left on the page
    v = len(re.findall(r"\[VERIFY", body))
    if v:
        block.append(f"{v} [VERIFY] tag(s) still on the page: check them on the vendor's site and remove them")
    for ph in ("[CONTACT EMAIL]", "[SCREENSHOT", "[IMAGE:", "[FORM:", "[PERSONALIZE"):
        if ph in body:
            block.append(f"placeholder {ph}… still on the page")

    # 2. links
    p = Links()
    p.feed(body)
    btns = [a for a in p.a if "btn" in (a.get("class") or "").split()]
    if len(btns) > 3:
        block.append(f"{len(btns)} CTA buttons (max 3)")
    for a in p.a:
        href = a.get("href") or ""
        if href.startswith("[") or "AFFILIATE LINK" in href:
            block.append(f"placeholder used as a link target: {href}")
        if href.startswith("http") and a.get("target") == "_blank" and "noopener" not in (a.get("rel") or ""):
            block.append(f"external link missing rel=noopener: {href}")
    sponsored = [a for a in p.a if "sponsored" in (a.get("rel") or "")]
    for a in sponsored:
        rel = a.get("rel") or ""
        if "nofollow" not in rel or a.get("target") != "_blank":
            block.append(f"affiliate link needs rel='sponsored nofollow noopener' and target=_blank: {a.get('href')}")
    if sponsored:
        d = body.find('class="disclosure"')
        first = body.find('rel="sponsored')
        if d == -1 or d > first:
            block.append("affiliate links present, but no FTC disclosure box before the first one")
        if "No affiliate links on this page" in body:
            block.append("page has affiliate links but still says 'No affiliate links on this page'")
    elif re.search(r"review|best-", path) and "No affiliate links on this page" not in body and 'class="disclosure"' not in body:
        warn.append("no affiliate links and no 'No affiliate links on this page' line")
    pend = body.count("[AFFILIATE LINK: PENDING]")
    if pend:
        warn.append(f"{pend} [AFFILIATE LINK: PENDING] comment(s): fine to publish, they're the monetize-later markers")
    if "copysmith" in body.lower():
        block.append("mentions Copysmith (do not use)")

    # 3. structure
    if p.h1 != 1:
        block.append(f"{p.h1} <h1> tags (need exactly 1)")
    else:
        warn.append("remember: hide the theme's page title in WordPress, or delete the in-page <h1>, so the page has one H1")
    for m in re.finditer(r'<script type="application/ld\+json">(.*?)</script>', body, re.S):
        try:
            json.loads(m.group(1))
        except Exception as e:
            block.append(f"invalid JSON-LD: {e}")
    if re.search(r"20(2[89]|[3-9]\d)", re.sub(r"Updated [A-Z][a-z]+ 2026", "", body)) or re.search(r"Updated [A-Z][a-z]+ 2027", body):
        warn.append("check dates: 'Updated' and 'Prices checked' dates must be the real date")
    if re.search(BANNED, body, re.I):
        warn.append("banned corporate phrase found: " + ", ".join(sorted(set(m.group(0) for m in re.finditer(BANNED, body, re.I)))))

    # 4. meta lengths from the header
    mt = re.search(r"Meta title \(≤60\):\s*(.+)", head)
    md = re.search(r"Meta description \(≤155\):\s*(.+)", head)
    if mt and len(mt.group(1).strip()) > 60:
        block.append(f"meta title is {len(mt.group(1).strip())} characters (max 60)")
    if md and len(md.group(1).strip()) > 155:
        block.append(f"meta description is {len(md.group(1).strip())} characters (max 155)")
    return block, warn


def main(files):
    bad = 0
    for f in files:
        block, warn = check(f)
        status = "READY" if not block else "NOT READY"
        print(f"\n{status}: {f}")
        for b in block:
            print(f"  BLOCK  {b}")
        for w in warn:
            print(f"  WARN   {w}")
        bad += bool(block)
    print(f"\n{len(files) - bad}/{len(files)} ready to paste into WordPress.")
    return 1 if bad else 0


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(2)
    sys.exit(main(sys.argv[1:]))
