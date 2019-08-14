function Log-Header {
    param( [string] $Message)

    Write-Host $Message -ForegroundColor Green
}

# Chocolately
Log-Header "Installing Chocolately..."
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# VSCode
Log-Header "Installing VSCode..."
choco install vscode

Log-Header "Installing Fira Code..."
choco install firacode

Log-Header "Installing Extensions..."

code --install-extension "ms-vscode.csharp"
code --install-extension "msjsdiag.debugger-for-chrome"
code --install-extension "ms-vscode.powershell"
code --install-extension "esbenp.prettier-vscode"
code --install-extension "ms-vscode.vscode-typescript-tslint-plugin"
code --install-extension "christian-kohler.npm-intellisense"
code --install-extension "eg2.vscode-npm-script"
code --install-extension "sdras.night-owl"