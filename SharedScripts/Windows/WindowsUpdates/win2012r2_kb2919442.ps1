& ".\install_windows_update.ps1" `
    -UpdateName "KB2919442.msu" `
    -DownloadUrl "https://download.microsoft.com/download/D/6/0/D60ED3E0-93A5-4505-8F6A-8D0A5DA16C8A/Windows8.1-KB2919442-x64.msu" `
    -InstallArgs @("/quiet","/norestart")