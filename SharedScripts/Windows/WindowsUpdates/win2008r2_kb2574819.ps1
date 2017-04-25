& ".\install_windows_update.ps1" `
    -UpdateName "KB2574819.msu" `
    -DownloadUrl "https://download.microsoft.com/download/4/2/F/42FB92B6-4034-4DAF-B900-6CCBF8312132/Windows6.1-KB2574819-v2-x64.msu" `
    -InstallArgs @("/quiet","/norestart")