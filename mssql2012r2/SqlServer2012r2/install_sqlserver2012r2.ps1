param (
    [Parameter(Mandatory=$true)]
    # Path to the SQL installation configuration file. The is the path as seen from within the guest.
    $ConfigPath
)

Write-Host "Installing SQL Server 2012 R2" -ForegroundColor Green


# 3 files are required, an EXE, the *Core.box, and the *Lang.box. These will be decompressed to produce the actual installer package.
# To be PS 2.0 compatible, dont use Invoke-WebRequest
Write-Host "Downloading SQL Server 2012 R2 installer" -ForegroundColor Green

# Download EXE
$exeDownloadUrl = "https://download.microsoft.com/download/4/C/7/4C7D40B9-BCF8-4F8A-9E76-06E9B92FE5AE/ENU/x64/SQLFULL_x64_ENU_Install.exe"
$exeTargetFile = "C:\tmp\SQLFULL_x64_ENU_Install.exe"
(New-Object System.Net.WebClient).DownloadFile($exeDownloadUrl, $exeTargetFile)

# Download *Core.box
$exeDownloadUrl = "https://download.microsoft.com/download/4/C/7/4C7D40B9-BCF8-4F8A-9E76-06E9B92FE5AE/ENU/x64/SQLFULL_x64_ENU_Core.box"
$coreboxTargetFile = "C:\tmp\SQLFULL_x64_ENU_Install.exe"
(New-Object System.Net.WebClient).DownloadFile($exeDownloadUrl, $coreboxTargetFile)

# Download *Lang.box
$exeDownloadUrl = "https://download.microsoft.com/download/4/C/7/4C7D40B9-BCF8-4F8A-9E76-06E9B92FE5AE/ENU/x64/SQLFULL_x64_ENU_Lang.box"
$langboxTargetFile = "C:\tmp\SQLFULL_x64_ENU_Install.exe"
(New-Object System.Net.WebClient).DownloadFile($exeDownloadUrl, $langboxTargetFile)

# Extract installer files
#$exeTargetFile 

# to be PS v2.0 compatible, we cannot use $PSScriptRoot
#$scriptPath = [System.IO.Path]::GetDirectoryName($myInvocation.MyCommand.Definition)
#$installer = Join-Path -Path $scriptPath -ChildPath "SQLFULL_x64_ENU\setup.exe"

# execute the installer
#C:\tmp\SQLFULL_x64_ENU\setup.exe