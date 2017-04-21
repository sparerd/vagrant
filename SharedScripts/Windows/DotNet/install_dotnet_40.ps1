# NOTE: this install will likely restart the machine

# To be PS 2.0 compatible, dont use Invoke-WebRequest

$packageName = "DotNet4_0.exe"
$downloadUrl = "https://download.microsoft.com/download/9/5/A/95A9616B-7A37-4AF6-BC36-D6EA96C8DAAE/dotNetFx40_Full_x86_x64.exe"
$targetFile = "C:\tmp\$packageName"
$fileArgs = @("/passive")


# Download installer
Write-Host "Downloading $packageName" -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

Write-Host "Installing $packageName" -ForegroundColor Green
Start-Process -FilePath $targetFile -ArgumentList $fileArgs -Wait
Write-Host "Finished installing $packageName" -ForegroundColor Green