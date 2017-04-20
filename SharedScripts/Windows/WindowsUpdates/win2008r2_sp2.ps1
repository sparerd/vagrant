# To be PS 2.0 compatible, dont use Invoke-WebRequest

$packageName = "Win2008r2_SP2.exe"
$downloadUrl = "https://download.microsoft.com/download/5/7/8/57804D8A-3C84-4DD4-867C-748050DDED9D/Windows6.0-KB948465-X64.exe"
$targetFile = "C:\tmp\$packageName"
$fileArgs = @("/unattend","/norestart")


# Download installer
Write-Host "Downloading $packageName" -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

Write-Host "Installing $packageName" -ForegroundColor Green
Start-Process -FilePath $targetFile -ArgumentList $fileArgs -Wait
Write-Host "Finished installing $packageName" -ForegroundColor Green