$events = Get-EventLog -LogName Security -After (Get-Date).AddDays(-1) | Where-Object {$_.EventID -eq 4624 -or $_.EventID -eq 4634 -or $_.EventID -eq 4647}

if ($events) {
    Write-
