# https://www.microsoft.com/en-us/download/details.aspx?id=718
# To be PS 2.0 compatible, we cannot use Invoke-WebRequest

Write-Host "Downloading Windows Vista/2008 SP2 update installer" -ForegroundColor Green
$updateUri = "https://download.microsoft.com/download/5/7/8/57804D8A-3C84-4DD4-867C-748050DDED9D/Windows6.0-KB948465-X64.exe"
$targetFile = "C:\tmp\update_sp2.exe"
(New-Object System.Net.WebClient).DownloadFile($updateUri, $targetFile)

Write-Host "Installing Windows Vista/2008 SP2 update" -ForegroundColor Green
.$targetFile /unattend