$taskName = "LPR Ayurveda daily check-in"
Unregister-ScheduledTask -TaskName $taskName -Confirm:$false -ErrorAction SilentlyContinue
Write-Host "Removed '$taskName' (if it existed)."
