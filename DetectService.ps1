$originalServices = Get-WmiObject -Class Win32_Service | Select-Object -ExpandProperty Name
Start-Sleep -s 300
$newServices = Get-WmiObject -Class Win32_Service | Select-Object -ExpandProperty Name
$addedServices = Compare-Object -ReferenceObject $originalServices -DifferenceObject $newServices | Where-Object {$_.SideIndicator -eq "=>"}

if ($addedServices) {
    Write-Host "New services detected:"
    $addedServices | Format-Table -Property InputObject
}