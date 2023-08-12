#HEY! LISTEN! Do this first, 'Set-ExecutionPolicy -ExecutionPolicy Unrestricted'
Param([string]$versionToInstall="3.4.11")
$null = New-Item -ItemType Directory -Force -Path C:\temp
Write-Host Downloading SourceTree-$versionToInstall... Please Wait! `(Progress bar disabled for speed`)
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri https://product-downloads.atlassian.com/software/sourcetree/windows/ga/SourceTreeSetup-$versionToInstall.exe -OutFile C:\temp\SourceTreeSetup-$versionToInstall.exe -UseBasicParsing
Start-Process -Wait -FilePath C:\temp\SourceTreeSetup-$versionToInstall.exe -ArgumentList "-s"
Remove-Item C:\temp\SourceTreeSetup-$versionToInstall.exe
echo "After first run of SourceTree run $HOME\AppData\Local\SourceTree\app-3.4.11\tools\putty\plink.exe ericspark88@github.com"