# NOTE: this install will likely restart the machine

# To be PS 2.0 compatible, dont use Invoke-WebRequest

$packageName = "DotNet4_5.exe"
$downloadUrl = "https://download.microsoft.com/download/B/A/4/BA4A7E71-2906-4B2D-A0E1-80CF16844F5F/dotNetFx45_Full_setup.exe"
$targetFile = "C:\tmp\$packageName"
$fileArgs = @("/passive")


# Download installer
Write-Host "Downloading $packageName" -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

Write-Host "Installing $packageName" -ForegroundColor Green
Start-Process -FilePath $targetFile -ArgumentList $fileArgs -Wait
Write-Host "Finished installing $packageName" -ForegroundColor Green