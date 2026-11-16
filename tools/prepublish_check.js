// Node port of tools/prepublish_check.py (same rules). node prepublish_check.js <file> ...
const fs = require('fs');
const BANNED = /\b(leverag\w*|utiliz\w*|synerg\w*|robust|seamless\w*|cutting-edge|delve|elevat\w*|game-changer)\b|unlock the power|fast-paced digital|in conclusion/gi;
const attrs = s => { const d = {}; for (const m of s.matchAll(/([\w:-]+)\s*=\s*("([^"]*)"|'([^']*)'|(\S+))/g)) d[m[1].toLowerCase()] = m[3] ?? m[4] ?? m[5]; return d; };
let bad = 0;
for (const path of process.argv.slice(2)) {
  const raw = fs.readFileSync(path, 'utf8'), block = [], warn = [];
  let start = raw.indexOf('<div class="gdny');
  if (start === -1 && raw.includes('gdny')) start = raw.indexOf('<!-- wp:group'); // block-markup pages (e.g. /blog/, /tech-news/)
  if (start === -1) { console.log(`NOT READY ${path}\n  BLOCK no .gdny wrapper`); bad++; continue; }
  const head = raw.slice(0, start), body = raw.slice(start);
  if (head.trim() && head.split('-->').length - 1 !== 1) block.push("header comment is broken");
  const v = (body.match(/\[VERIFY/g) || []).length; if (v) block.push(`${v} [VERIFY] tag(s) still on the page`);
  for (const ph of ['[CONTACT EMAIL]', '[SCREENSHOT', '[IMAGE:', '[FORM:', '[PERSONALIZE']) if (body.includes(ph)) block.push(`placeholder ${ph} still on the page`);
  const as = [...body.matchAll(/<a\b([^>]*)>/gi)].map(m => attrs(m[1]));
  const btns = as.filter(a => (a.class || '').split(/\s+/).includes('btn')); if (btns.length > 3) block.push(`${btns.length} CTA buttons (max 3)`);
  for (const a of as) { const h = a.href || ''; if (h.startsWith('[') || h.includes('AFFILIATE LINK')) block.push('placeholder link target: ' + h); if (h.startsWith('http') && a.target === '_blank' && !(a.rel || '').includes('noopener')) block.push('external link missing noopener: ' + h); }
  const sp = as.filter(a => (a.rel || '').includes('sponsored'));
  for (const a of sp) if (!(a.rel || '').includes('nofollow') || a.target !== '_blank') block.push('bad affiliate link: ' + a.href);
  if (sp.length) { const d = body.indexOf('class="disclosure"'), f = body.indexOf('rel="sponsored'); if (d === -1 || d > f) block.push('no disclosure box before first affiliate link'); if (body.includes('No affiliate links on this page')) block.push("still says 'No affiliate links'"); }
  if ((body.match(/\[AFFILIATE LINK: PENDING\]/g) || []).length) warn.push('AFFILIATE LINK: PENDING markers present (fine)');
  if (/copysmith/i.test(body)) block.push('mentions Copysmith');
  const h1 = (body.match(/<h1[\s>]/gi) || []).length; if (h1 !== 1) block.push(`${h1} <h1> tags`); else warn.push('remember: hide the theme title');
  for (const m of body.matchAll(/<script type="application\/ld\+json">([\s\S]*?)<\/script>/g)) { try { JSON.parse(m[1]); } catch (e) { block.push('invalid JSON-LD: ' + e.message); } }
  if (/20(2[89]|[3-9]\d)/.test(body.replace(/Updated [A-Z][a-z]+ 2026/g, '')) || /Updated [A-Z][a-z]+ 2027/.test(body)) warn.push('check dates');
  const bn = body.match(BANNED); if (bn) warn.push('banned phrase: ' + [...new Set(bn)].join(', '));
  const mt = head.match(/Meta title \(≤60\):\s*(.+)/), md = head.match(/Meta description \(≤155\):\s*(.+)/);
  if (mt && mt[1].trim().length > 60) block.push(`meta title ${mt[1].trim().length} chars`);
  if (md && md[1].trim().length > 155) block.push(`meta description ${md[1].trim().length} chars`);
  console.log(`${block.length ? 'NOT READY' : 'READY'}  ${path.replace(/^.*[\\/]/, '')}  (buttons=${btns.length}, affiliate links=${sp.length}, meta title=${mt ? mt[1].trim().length : '-'}, meta desc=${md ? md[1].trim().length : '-'})`);
  block.forEach(b => console.log('  BLOCK ' + b)); warn.forEach(w => console.log('  WARN  ' + w)); bad += !!block.length;
}
process.exit(bad ? 1 : 0);
