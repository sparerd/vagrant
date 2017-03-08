# Download installer (to be PS 2.0 compatible, dont use Invoke-WebRequest)
Write-Host "Downloading Windows Management Framework 5 installer" -ForegroundColor Green
$downloadUrl = "https://download.microsoft.com/download/2/C/6/2C6E1B4A-EBE5-48A6-B225-2D2058A9CEFB/Win7AndW2K8R2-KB3134760-x64.msu"
$targetFile = "C:\tmp\win_management_framework_5.msu"
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

wusa $targetFile /quiet /norestart
Restart-Computer