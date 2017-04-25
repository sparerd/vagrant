& ".\install_windows_update.ps1" `
    -UpdateName "KB2919355.msu" `
    -DownloadUrl "https://download.microsoft.com/download/2/5/6/256CCCFB-5341-4A8D-A277-8A81B21A1E35/Windows8.1-KB2919355-x64.msu" `
    -InstallArgs @("/quiet","/norestart")