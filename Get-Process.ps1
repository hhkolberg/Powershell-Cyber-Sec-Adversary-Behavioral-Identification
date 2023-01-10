$maliciousProcesses = @("malware1.exe", "malware2.exe", "malware3.exe")

foreach ($process in (Get-Process)) {
    if ($maliciousProcesses -contains $process.Name) {
        Write-Host "Potentially malicious process detected: $($process.Name)"
    }
}
