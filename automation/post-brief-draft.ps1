# Posts a Tech Brief from content/briefs/ to WordPress as a DRAFT, using the Contributor login.
# Status "draft" and category 12 (Tech Brief) are hard-coded here, never read from the brief files.
# Usage: post-brief-draft.ps1 [-Date yyyy-MM-dd]   (default: today)
param([string]$Date = (Get-Date -Format 'yyyy-MM-dd'))
$ErrorActionPreference = 'Stop'
$Project = 'C:\Users\rahul\growdigitalny-site-main'
$CategoryId = 12
function Say($msg) { "[post-brief $Date] $msg" }

# Only the three variables this script needs. Values are never printed.
$cfg = @{}
Get-Content (Join-Path $Project '.env') | ForEach-Object {
  if ($_ -match '^\s*(WP_URL|WP_BRIEF_USER|WP_BRIEF_APP_PASSWORD)\s*=\s*(.*?)\s*$') { $cfg[$matches[1]] = $matches[2].Trim('"', "'") }
}
foreach ($k in 'WP_URL', 'WP_BRIEF_USER', 'WP_BRIEF_APP_PASSWORD') { if (-not $cfg[$k]) { Say "STOP: $k missing in .env"; exit 1 } }
$auth = "$($cfg.WP_BRIEF_USER):$($cfg.WP_BRIEF_APP_PASSWORD)"
$api = "$($cfg.WP_URL)/wp-json/wp/v2"

# 1. Brief files
$md = Join-Path $Project "content\briefs\$Date-tech-brief.md"
$html = Join-Path $Project "content\briefs\$Date-tech-brief.html"
if (-not (Test-Path $md) -or -not (Test-Path $html)) { Say "No brief files for $Date (nothing to post)."; exit 0 }

# 2. Front matter (between the first two '---' lines)
$lines = [IO.File]::ReadAllLines($md, [Text.Encoding]::UTF8)
if ($lines[0].Trim() -ne '---') { Say 'STOP: .md has no front matter'; exit 1 }
$fm = @{}
for ($i = 1; $i -lt $lines.Count -and $lines[$i].Trim() -ne '---'; $i++) {
  if ($lines[$i] -match '^\s*([a-z_]+)\s*:\s*(.*?)\s*$') { $fm[$matches[1]] = $matches[2].Trim('"', "'") }
}
foreach ($k in 'title', 'slug', 'meta_title', 'meta_description', 'focus_keyphrase') { if (-not $fm[$k]) { Say "STOP: front matter field '$k' missing"; exit 1 } }
if ($fm.slug -notmatch '^(daily-)?tech-brief-\d{4}-\d{2}-\d{2}$') { Say "STOP: unexpected slug '$($fm.slug)'"; exit 1 }
if ($fm.meta_title.Length -gt 60) { Say "WARN: meta_title is $($fm.meta_title.Length) chars (over 60)" }
if ($fm.meta_description.Length -gt 155) { Say "WARN: meta_description is $($fm.meta_description.Length) chars (over 155)" }

# 3. Content checks
$content = [IO.File]::ReadAllText($html, [Text.Encoding]::UTF8).Trim()
if ($content -match '(?i)<script|<iframe') { Say 'STOP: brief HTML contains <script> or <iframe>'; exit 1 }
if ($content.Length -lt 500) { Say "STOP: brief HTML is suspiciously short ($($content.Length) chars)"; exit 1 }

# 3b. Evidence gate: every H2 story needs a section with a URL and at least one verbatim Quote: line
$ev = Join-Path $Project "content\briefs\$Date-evidence.md"
if (-not (Test-Path $ev)) { Say "STOP: evidence file missing ($Date-evidence.md). No draft without quote-backed headlines."; exit 1 }
$evText = [IO.File]::ReadAllText($ev, [Text.Encoding]::UTF8)
$sections = @([regex]::Split($evText, '(?m)^## ') | Select-Object -Skip 1)
$h2Count = [regex]::Matches($content, '<h2[\s>]').Count
if ($sections.Count -ne $h2Count) { Say "STOP: evidence has $($sections.Count) story sections but the brief has $h2Count H2 headlines."; exit 1 }
foreach ($s in $sections) {
  $name = ($s -split "`n")[0].Trim()
  $url = [regex]::Match($s, '(?m)^URL:\s*(https?://\S+)')
  if (-not $url.Success) { Say "STOP: evidence for '$name' has no URL line."; exit 1 }
  if ($content -notmatch [regex]::Escape($url.Groups[1].Value)) { Say "STOP: evidence URL for '$name' is not linked in the brief."; exit 1 }
  if ($s -notmatch '(?m)^Quote:\s*["“].{20,}') { Say "STOP: evidence for '$name' has no Quote: line."; exit 1 }
}

# 4. Never post twice: refuse if any post already uses this slug
$existing = curl.exe -sS -u $auth "$api/posts?slug=$($fm.slug)&status=draft,pending,publish,future,private&context=edit&_fields=id,status" | ConvertFrom-Json
if (@($existing).Count -gt 0 -and $existing[0].id) { Say "STOP: a post with slug '$($fm.slug)' already exists (ID $($existing[0].id), $($existing[0].status))."; exit 0 }

# 5. Create the draft
$payload = [ordered]@{
  title      = $fm.title
  slug       = $fm.slug
  content    = $content
  status     = 'draft'            # hard-coded
  categories = @($CategoryId)     # hard-coded
  meta       = [ordered]@{
    _yoast_wpseo_title    = $fm.meta_title
    _yoast_wpseo_metadesc = $fm.meta_description
    _yoast_wpseo_focuskw  = $fm.focus_keyphrase
  }
}
$tmp = Join-Path $env:TEMP "gdny-brief-$Date-$([guid]::NewGuid().ToString('N')).json"
[IO.File]::WriteAllText($tmp, ($payload | ConvertTo-Json -Depth 5 -Compress), (New-Object Text.UTF8Encoding $false))
try {
  $raw = curl.exe -sS -u $auth -H 'Content-Type: application/json; charset=utf-8' --data-binary "@$tmp" "$api/posts"
} finally { Remove-Item $tmp -Force -ErrorAction SilentlyContinue }
$r = $raw | ConvertFrom-Json
if (-not $r.id) { Say "FAILED: WordPress said: $($r.code) $($r.message)"; exit 1 }

# 6. Confirm what WordPress stored
if ($r.status -ne 'draft') { Say "WARNING: post $($r.id) has status '$($r.status)' (expected draft). Check it now." }
$cats = @($r.categories) -join ','
$metaOk = @()
foreach ($k in '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw') {
  $stored = $r.meta.$k
  $metaOk += "$k=" + $(if ($stored -and $stored -eq $payload.meta[$k]) { 'saved' } else { 'NOT saved (set it by hand)' })
}
Say "Created draft ID $($r.id): status=$($r.status) categories=[$cats] slug=$($r.slug)"
Say ("Yoast: " + ($metaOk -join '; '))
Say "Edit: $($cfg.WP_URL)/wp-admin/post.php?post=$($r.id)&action=edit"
exit 0
