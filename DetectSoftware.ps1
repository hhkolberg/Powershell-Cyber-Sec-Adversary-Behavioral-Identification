$originalSoftware = Get-WmiObject -Class Win32_Product | Select-Object -ExpandProperty Name
Start-Sleep -s 300
$newSoftware = Get-WmiObject -Class Win32_Product | Select-Object -ExpandProperty Name
$addedSoftware = Compare-Object -ReferenceObject $originalSoftware -DifferenceObject $newSoftware | Where-Object {$_.SideIndicator -eq "=>"}

if ($addedSoftware) {
    Write-Host "New software detected:"
    $addedSoftware | Format-Table -Property InputObject
}