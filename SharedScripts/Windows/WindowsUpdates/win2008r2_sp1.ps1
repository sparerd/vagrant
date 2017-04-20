# To be PS 2.0 compatible, dont use Invoke-WebRequest

$packageName = "Win2008r2_SP1.exe"
$downloadUrl = "https://download.microsoft.com/download/0/A/F/0AFB5316-3062-494A-AB78-7FB0D4461357/windows6.1-KB976932-X64.exe"
$targetFile = "C:\tmp\$packageName"
$fileArgs = @("/unattend","/norestart")


# Download installer
Write-Host "Downloading $packageName" -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

Write-Host "Installing $packageName" -ForegroundColor Green
Start-Process -FilePath $targetFile -ArgumentList $fileArgs -Wait
Write-Host "Finished installing $packageName" -ForegroundColor Green