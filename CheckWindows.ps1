$path = "C:\Windows"
$originalFileList = (Get-ChildItem -Path $path -Recurse | Select-Object -ExpandProperty FullName)
Start-Sleep -s 300
$newFileList = (Get-ChildItem -Path $path -Recurse | Select-Object -ExpandProperty FullName)
$addedFiles = Compare-Object -ReferenceObject $originalFileList -DifferenceObject $newFileList | Where-Object {$_.SideIndicator -eq "=>"}

if ($addedFiles) {
    Write-Host "New files detected:"
    $addedFiles | Format-Table -Property InputObject
}