# To be PS 2.0 compatible, dont use Invoke-WebRequest
# Requires .Net 3.5.1

$packageName = "WixToolset_installer.exe"
$downloadUrl = "http://wixtoolset.org/downloads/v3.11.0.1507/wix311.exe"
$targetFile = "C:\tmp\$packageName"

# Download installer
Write-Host "Downloading $packageName" -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

Write-Host "Installing $packageName" -ForegroundColor Green
Start-Process -FilePath $targetFile -ArgumentList @("/q") -Wait
Write-Host "Finished installing $packageName" -ForegroundColor Green