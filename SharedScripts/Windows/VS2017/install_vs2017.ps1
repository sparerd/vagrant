# To be PS 2.0 compatible, dont use Invoke-WebRequest

$packageName = "Visual_Studio_2017_Community_Edition.exe"
$downloadUrl = "https://download.microsoft.com/download/9/D/2/9D228A37-56C0-48D7-B1B4-486090DE7C2A/vs_Community.exe"
$targetFile = "C:\tmp\$packageName"

# Download installer
Write-Host "Downloading $packageName" -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, $targetFile)

# VS2017 installer args: https://docs.microsoft.com/en-us/visualstudio/install/use-command-line-parameters-to-install-visual-studio
Write-Host "Installing $packageName" -ForegroundColor Green

$workloadId_DotNetDevelopment = "Microsoft.VisualStudio.Workload.ManagedDesktop"
Start-Process -FilePath $targetFile -Wait -ArgumentList @(
    "--passive",
    "--add $workloadId_DotNetDevelopment"
)

Write-Host "Finished installing $packageName" -ForegroundColor Green