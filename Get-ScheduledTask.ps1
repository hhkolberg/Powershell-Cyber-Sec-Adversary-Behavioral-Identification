$newTasks = (Get-ScheduledTask | Where-Object {$_.State -eq "Ready"})

if ($newTasks) {
    Write-Host "New or modified scheduled tasks detected:"
    $newTasks | Format-Table -Property TaskName
}
