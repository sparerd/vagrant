& ".\install_windows_update.ps1" `
    -UpdateName "KB2923545.msu" `
    -DownloadUrl "https://download.microsoft.com/download/9/D/B/9DBEBE50-BD86-4B58-9C5B-9254677E1CA5/Windows6.1-KB2923545-x64.msu" `
    -InstallArgs @("/quiet","/norestart")