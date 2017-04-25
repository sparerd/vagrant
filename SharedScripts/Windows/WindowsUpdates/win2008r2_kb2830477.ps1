& ".\install_windows_update.ps1" `
    -UpdateName "KB2830477.msu" `
    -DownloadUrl "https://download.microsoft.com/download/5/5/5/55572891-01E9-4A4E-904F-3191AA28EAAA/Windows6.1-KB2830477-x64.msu" `
    -InstallArgs @("/quiet","/norestart")