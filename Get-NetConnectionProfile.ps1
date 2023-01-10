$currentProfile = (Get-NetConnectionProfile).Name
Start-Sleep -s 300
$newProfile = (Get-NetConnectionProfile).Name

if ($currentProfile -ne $newProfile) {
    Write-Host "Network configuration has changed!"
}
