& ".\install_windows_update.ps1" `
    -UpdateName "Win2008r2_SP2.exe" `
    -DownloadUrl "https://download.microsoft.com/download/5/7/8/57804D8A-3C84-4DD4-867C-748050DDED9D/Windows6.0-KB948465-X64.exe" `
    -InstallArgs @("/unattend","/norestart")