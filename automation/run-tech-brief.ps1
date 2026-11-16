# Runs the daily Tech Brief. Started by Task Scheduler at 07:00.
# Step 1: Claude researches and writes content/briefs/<date>-tech-brief.{md,html} and -newsletter.txt
#         (no WordPress access, no shell, no MCP servers, no secrets in its environment).
# Step 2: post-brief-draft.ps1 posts the brief as a DRAFT (category 12) with the Contributor login. Never publishes.
$ErrorActionPreference = 'Stop'
$Project = 'C:\Users\rahul\growdigitalny-site-main'
Set-Location $Project
$LogDir = Join-Path $Project 'logs'
New-Item -ItemType Directory -Force $LogDir | Out-Null
$Stamp = Get-Date -Format 'yyyy-MM-dd_HHmm'
$Today = Get-Date -Format 'yyyy-MM-dd'

# Claude gets no WordPress credentials: make sure none are in this process's environment.
foreach ($v in 'WP_USER', 'WP_APP_PASSWORD', 'WP_BRIEF_USER', 'WP_BRIEF_APP_PASSWORD') { Remove-Item "Env:$v" -ErrorAction SilentlyContinue }
$env:ENABLE_CLAUDEAI_MCP_SERVERS = 'false'   # no claude.ai connectors

$prompt = "Read .claude/commands/tech-brief.md and follow it in daily mode (today is $Today). This is the SCHEDULED non-interactive run: nobody can answer questions. Do steps 1-6 and step 9 only. Save the three files in content/briefs/ ($Today-tech-brief.md with front matter fields title, slug, meta_title, meta_description, focus_keyphrase, status: draft; $Today-tech-brief.html as WordPress block markup; $Today-newsletter.txt), plus $Today-evidence.md with an exact quoted sentence from the source backing every headline, name, number and date (format in the rules). Do NOT try to create a WordPress post: a separate script posts the draft. If fewer than 3 stories pass verification, write no brief files, log 'no brief today' in CHANGELOG.md and stop."

$claudeArgs = @(
  '-p', $prompt,
  '--restricted',                                   # no shell tools; ignores user/project/local settings
  '--tools', 'Read,Glob,Grep,Write,Edit,WebFetch,WebSearch',
  '--strict-mcp-config',                            # no MCP servers at all
  '--settings', (Join-Path $Project 'automation\tech-brief-settings.json'),  # write limits
  '--permission-mode', 'dontAsk', '--permission-prompts', 'none',
  '--output-format', 'stream-json', '--verbose'
)
$log = Join-Path $LogDir "tech-brief-$Stamp.jsonl"
$err = Join-Path $LogDir "tech-brief-$Stamp.err.txt"
& claude @claudeArgs 2> $err | Out-File -FilePath $log -Encoding utf8
$claudeExit = $LASTEXITCODE

# Step 2: post the draft (only if Claude finished cleanly)
$postLog = Join-Path $LogDir "post-brief-$Stamp.txt"
if ($claudeExit -eq 0) {
  & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Project 'automation\post-brief-draft.ps1') -Date $Today *>&1 | Out-File -FilePath $postLog -Encoding utf8
} else {
  "Claude exited with code $claudeExit; draft not posted." | Out-File -FilePath $postLog -Encoding utf8
}
exit $claudeExit
