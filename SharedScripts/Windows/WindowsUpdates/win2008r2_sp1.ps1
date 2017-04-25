& ".\install_windows_update.ps1" `
    -UpdateName "Win2008r2_SP1.exe" `
    -DownloadUrl "https://download.microsoft.com/download/0/A/F/0AFB5316-3062-494A-AB78-7FB0D4461357/windows6.1-KB976932-X64.exe" `
    -InstallArgs @("/unattend","/norestart")