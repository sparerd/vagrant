& ".\install_windows_update.ps1" `
    -UpdateName "KB2592687.msu" `
    -DownloadUrl "https://download.microsoft.com/download/D/5/E/D5E6E524-CC73-40C1-AFE3-564C69E64E2D/Windows6.1-KB2592687-x64.msu" `
    -InstallArgs @("/quiet","/norestart")