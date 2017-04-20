# To be PS 2.0 compatible, dont use Invoke-WebRequest

$packageName = "Git_installer.exe"
$downloadUrl = "https://github.com/git-for-windows/git/releases/download/v2.12.0.windows.1/Git-2.12.0-64-bit.exe"
$targetFile = "C:\tmp\$packageName"

# Download installer
Write-Host "Downloading $packageName" -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

Write-Host "Installing $packageName" -ForegroundColor Green
Start-Process -FilePath $targetFile -ArgumentList @("/SILENT","/NORESTART") -Wait
Write-Host "Finished installing $packageName" -ForegroundColor Green