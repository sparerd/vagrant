# To be PS 2.0 compatible, dont use Invoke-WebRequest

$packageName = "KB2919442.msu"
$downloadUrl = "https://download.microsoft.com/download/D/6/0/D60ED3E0-93A5-4505-8F6A-8D0A5DA16C8A/Windows8.1-KB2919442-x64.msu"
$targetFile = "C:\tmp\$packageName"

# Download installer
Write-Host "Downloading $packageName" -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

Write-Host "Installing $packageName" -ForegroundColor Green
Start-Process -FilePath $targetFile -ArgumentList "/quiet","/norestart" -Wait
Write-Host "Finished installing $packageName" -ForegroundColor Green