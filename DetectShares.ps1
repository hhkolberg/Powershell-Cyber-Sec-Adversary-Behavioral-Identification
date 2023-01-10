$originalShares = Get-WmiObject -Class Win32_Share | Select-Object -ExpandProperty Name
Start-Sleep -s 300
$newShares = Get-WmiObject -Class Win32_Share | Select-Object -ExpandProperty Name
$addedShares = Compare-Object -ReferenceObject $originalShares -DifferenceObject $newShares | Where-Object {$_.SideIndicator -eq "=>"}

if ($addedShares) {
    Write-Host "New shares detected:"
    $addedShares | Format-Table -Property InputObject
}