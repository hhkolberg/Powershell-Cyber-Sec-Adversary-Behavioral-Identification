$originalStartupItems = Get-StartupItem
Start-Sleep -s 300
$newStartupItems = Get-StartupItem

$addedStartupItems = Compare-Object -ReferenceObject $originalStartupItems -DifferenceObject $newStartupItems | Where-Object {$_.SideIndicator -eq "=>"}

if ($addedStartupItems) {
    Write-Host "New startup items detected:"
    $addedStartupItems | Format-Table -Property Path
}
