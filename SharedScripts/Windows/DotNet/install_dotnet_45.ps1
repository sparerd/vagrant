# Download installer (to be PS 2.0 compatible, dont use Invoke-WebRequest)
Write-Host "Downloading .Net 4.5 installer" -ForegroundColor Green
$downloadUrl = "https://download.microsoft.com/download/B/A/4/BA4A7E71-2906-4B2D-A0E1-80CF16844F5F/dotNetFx45_Full_setup.exe"
$targetFile = "C:\tmp\dotNetFx45_Full_setup.exe"
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

# Install
Write-Host "Installing .Net 4.5" -ForegroundColor Green
.$targetFile /passive /norestart