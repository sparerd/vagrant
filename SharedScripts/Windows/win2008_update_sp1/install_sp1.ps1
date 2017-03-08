# Download installer (to be PS 2.0 compatible, dont use Invoke-WebRequest)
Write-Host "Downloading Windows Vista/2008 SP1 update installer" -ForegroundColor Green
$updateUri = "https://download.microsoft.com/download/0/A/F/0AFB5316-3062-494A-AB78-7FB0D4461357/windows6.1-KB976932-X64.exe"
$targetFile = "C:\tmp\update_sp1.exe"
(New-Object System.Net.WebClient).DownloadFile($updateUri, $targetFile)

Write-Host "Installing Windows Vista/2008 SP1 update" -ForegroundColor Green
.$targetFile /unattend