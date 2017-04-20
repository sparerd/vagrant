# To be PS 2.0 compatible, dont use Invoke-WebRequest
# Requires KB2919442

$packageName = "KB2919355.msu"
$downloadUrl = "https://download.microsoft.com/download/2/5/6/256CCCFB-5341-4A8D-A277-8A81B21A1E35/Windows8.1-KB2919355-x64.msu"
$targetFile = "C:\tmp\$packageName"
$fileArgs = @("/quiet","/norestart")

# Download installer
Write-Host "Downloading $packageName" -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

Write-Host "Installing $packageName" -ForegroundColor Green
Start-Process -FilePath $targetFile -ArgumentList $fileArgs -Wait
Write-Host "Finished installing $packageName" -ForegroundColor Green