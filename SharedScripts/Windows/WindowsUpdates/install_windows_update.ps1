param (
    [string]
    $UpdateName,

    [string]
    $DownloadUrl,

    [string[]]
    $InstallArgs = @(),

    [string]
    $DownloadDirectory = "C:\tmp"
)


$targetFile = Join-Path -Path $DownloadDirectory -ChildPath $UpdateName

# Download installer (To be PS 2.0 compatible, dont use Invoke-WebRequest)
Write-Host "Downloading $UpdateName" -ForegroundColor Green
(New-Object System.Net.WebClient).DownloadFile($DownloadUrl, $targetFile)

Write-Host "Installing $UpdateName" -ForegroundColor Green
Start-Process -FilePath $targetFile -ArgumentList $InstallArgs -Wait
Write-Host "Finished installing $UpdateName" -ForegroundColor Green