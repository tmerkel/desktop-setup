# Enable WSL
Enable-WindowsOptionalFeature -NoRestart -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# Enable Virtual Machine Platform
Enable-WindowsOptionalFeature -NoRestart -Online -FeatureName VirtualMachinePlatform

Write-Host "Finished installing pre-requisites.  Please restart." -ForegroundColor Green