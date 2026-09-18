# Daily morning task for the LPR Ayurveda companion.
# Runs Claude headless to write today's check-in questions into the profile journal,
# then shows a Windows toast so you know they are waiting.
param(
  [string]$ClaudeExe = "",
  [string]$ProfileDir = ""
)
$ErrorActionPreference = "Continue"
$pluginRoot = Split-Path -Parent $PSScriptRoot
$workDir    = Split-Path -Parent $pluginRoot          # C:\temp\lpr
if (-not $ProfileDir) { $ProfileDir = $env:LPR_PROFILE_DIR }
if (-not $ProfileDir) { $ProfileDir = $env:LPR_PROFILE_DIR }
if (-not $ProfileDir) {
  # Ask the plugin's own resolver, so the task, the hook and the skills always agree.
  try {
    $env:CLAUDE_PLUGIN_ROOT = $pluginRoot
    $ProfileDir = (& node (Join-Path $PSScriptRoot "profile-dir.js") "--seed" | Select-Object -First 1).Trim()
  } catch { $ProfileDir = $null }
}
if (-not $ProfileDir) { $ProfileDir = Join-Path $workDir "profile" }
if (-not $ClaudeExe)  { $ClaudeExe = (Get-Command claude -ErrorAction SilentlyContinue).Source }
if (-not $ClaudeExe)  { $ClaudeExe = Join-Path $env:USERPROFILE ".local\bin\claude.exe" }

$logDir = Join-Path $ProfileDir "journal"
New-Item -ItemType Directory -Force -Path $logDir | Out-Null
$log = Join-Path $logDir ".scheduler.log"
$today = Get-Date -Format "yyyy-MM-dd"
$entry = Join-Path $logDir "$today.md"

"[$(Get-Date -Format s)] start (profile: $ProfileDir; claude: $ClaudeExe)" | Out-File -Append -Encoding utf8 $log
if (-not (Test-Path $ClaudeExe)) {
  "[$(Get-Date -Format s)] FAIL: claude executable not found at '$ClaudeExe'" | Out-File -Append -Encoding utf8 $log
  exit 1
}
if (Test-Path $entry) {
  "[$(Get-Date -Format s)] $today.md already exists; nothing to do" | Out-File -Append -Encoding utf8 $log
  exit 0
}

$env:LPR_PROFILE_DIR = $ProfileDir
Set-Location $workDir
$prompt = "/lpr-ayurveda:lpr-checkin scheduled"
$claudeArgs = @(
  "-p", $prompt,
  "--plugin-dir", $pluginRoot,
  "--add-dir", $ProfileDir,
  "--permission-mode", "acceptEdits",
  "--allowedTools", "Read,Write,Edit,Glob,Grep,Bash(echo *),Bash(ls *),Bash(dir *)",
  "--output-format", "text"
)
try {
  $out = & $ClaudeExe @claudeArgs 2>&1
  $out | Out-File -Append -Encoding utf8 $log
} catch {
  "[$(Get-Date -Format s)] error: $_" | Out-File -Append -Encoding utf8 $log
}

if (Test-Path $entry) {
  try {
    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] | Out-Null
    [Windows.Data.Xml.Dom.XmlDocument, Windows.Data.Xml.Dom.XmlDocument, ContentType = WindowsRuntime] | Out-Null
    $xml = @"
<toast><visual><binding template="ToastGeneric">
<text>LPR Ayurveda check-in</text>
<text>Today's questions are ready in profile\journal\$today.md. Answer there or run /lpr-ayurveda:lpr-checkin.</text>
</binding></visual></toast>
"@
    $doc = New-Object Windows.Data.Xml.Dom.XmlDocument
    $doc.LoadXml($xml)
    $toast = New-Object Windows.UI.Notifications.ToastNotification $doc
    # The AppUserModelID must belong to a Start-Menu-registered app or Windows drops
    # the toast silently. Reuse the built-in Windows PowerShell AUMID.
    $aumid = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\WindowsPowerShell\v1.0\powershell.exe'
    [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($aumid).Show($toast)
  } catch {
    "[$(Get-Date -Format s)] toast failed: $_" | Out-File -Append -Encoding utf8 $log
  }
  "[$(Get-Date -Format s)] wrote $entry" | Out-File -Append -Encoding utf8 $log
  exit 0
} else {
  # Fail loudly: a silent no-op here is exactly how a broken daily check-in hides.
  # Task Scheduler shows the non-zero result in "Last Run Result".
  "[$(Get-Date -Format s)] FAIL: no journal entry produced at $entry (see the claude output above)" | Out-File -Append -Encoding utf8 $log
  exit 1
}
