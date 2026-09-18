# Registers a daily Windows Task Scheduler job that runs daily-task.ps1.
# Usage:  powershell -NoProfile -ExecutionPolicy Bypass -File install-scheduler.ps1 [-At "07:30"]
param([string]$At = "07:30", [string]$ProfileDir = "")
$taskName = "LPR Ayurveda daily check-in"
$script   = Join-Path $PSScriptRoot "daily-task.ps1"
# Baked in so the task does not depend on Task Scheduler handing the process a
# user environment block that carries LPR_PROFILE_DIR.
if (-not $ProfileDir) { $ProfileDir = $env:LPR_PROFILE_DIR }
$taskArgs = "-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File `"$script`""
if ($ProfileDir) { $taskArgs += " -ProfileDir `"$ProfileDir`"" }
$action   = New-ScheduledTaskAction -Execute "powershell.exe" -Argument $taskArgs
$trigger  = New-ScheduledTaskTrigger -Daily -At $At
$settings = New-ScheduledTaskSettingsSet -StartWhenAvailable -ExecutionTimeLimit (New-TimeSpan -Minutes 15) `
  -MultipleInstances IgnoreNew
Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings -Force | Out-Null
Write-Host "Registered '$taskName' daily at $At. Runs missed starts when the PC wakes."
if ($ProfileDir) { Write-Host "Profile directory: $ProfileDir" } else { Write-Host "Profile directory: default (<plugin parent>\profile)" }
Write-Host "Log:       (profile)\journal\.scheduler.log"
Write-Host "Test now:  Start-ScheduledTask -TaskName '$taskName'"
Write-Host "Remove:    powershell -NoProfile -ExecutionPolicy Bypass -File `"$PSScriptRoot\uninstall-scheduler.ps1`""
