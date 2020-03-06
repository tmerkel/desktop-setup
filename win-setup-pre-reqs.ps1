# Enable WSL
Write-Host "Enabling Windows Subsystem for Linux..." -ForegroundColor Blue
Enable-WindowsOptionalFeature -NoRestart -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# Enable Virtual Machine Platform
Write-Host "Enabling Virtual Machine Platform..." -ForegroundColor Blue
Enable-WindowsOptionalFeature -NoRestart -Online -FeatureName VirtualMachinePlatform

Write-Host "Finished installing pre-requisites.  Please restart." -ForegroundColor Green
