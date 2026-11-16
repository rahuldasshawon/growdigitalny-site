# Guard for the scheduled Tech Brief run. Exit 0 = allow, exit 2 = block (reason on stderr).
$ErrorActionPreference = 'Stop'
function Block($why) { [Console]::Error.WriteLine("Blocked by brief-guard: $why"); exit 2 }
try { $in = [Console]::In.ReadToEnd() | ConvertFrom-Json } catch { Block 'unreadable hook input' }

$tool = [string]$in.tool_name
$prefix = 'mcp__growdigitalny-wordpress__'
if (-not $tool.StartsWith($prefix)) { Block "MCP server not allowed: $tool" }
$name = $tool.Substring($prefix.Length)
if ($name -in @('mcp-adapter-discover-abilities', 'mcp-adapter-get-ability-info')) { exit 0 }
if ($name -ne 'mcp-adapter-execute-ability') { Block "tool not allowed: $name" }

$ability = [string]$in.tool_input.ability_name
$p = $in.tool_input.parameters
$readOnly = @('hostinger-ai/posts-search', 'hostinger-ai/posts-get', 'hostinger-ai/categories-list',
              'hostinger-ai/categories-get', 'hostinger-ai/tags-list', 'hostinger-ai/seo-get',
              'hostinger-ai/users-get-current', 'core/get-site-info')
if ($readOnly -contains $ability) { exit 0 }

if ($ability -eq 'hostinger-ai/posts-create') {
  if ($null -eq $p) { Block 'no parameters' }
  if ([string]$p.status -ne 'draft') { Block 'status must be "draft"' }
  $cats = @($p.categories)
  if ($cats.Count -ne 1 -or [int]$cats[0] -ne 12) { Block 'categories must be exactly [12] (Tech Brief)' }
  foreach ($k in 'password', 'sticky', 'author', 'template', 'date', 'date_gmt') {
    if ($p.PSObject.Properties.Name -contains $k) { Block "field not allowed: $k" }
  }
  if ($p.meta) {
    $okMeta = @('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw')
    foreach ($m in $p.meta.PSObject.Properties.Name) { if ($okMeta -notcontains $m) { Block "meta not allowed: $m" } }
  }
  exit 0
}
Block "ability not allowed: $ability"
