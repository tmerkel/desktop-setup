function Log-Header {
    param( [string] $Message)

    Write-Host $Message -ForegroundColor Green
}

mkdir temp

# Chocolately
Log-Header "Installing Chocolately..."
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# WSL
Log-Header "WSL!"
Log-Header "Getting Ubuntu 18.04..."
curl.exe -L -o ./temp/ubuntu-1804.appx https://aka.ms/wsl-ubuntu-1804

Log-Header "Adding Ubuntu package..."
Add-AppxPackage .\temp\ubuntu-1804.appx

Log-Header "Installing Ubuntu...I'm gonna need some input here..."
ubuntu

Log-Header "Installing WSL..."
wsl --set-version Ubuntu 2

# Sourcetree
Log-Header "Installing Sourcetree..."
choco install sourcetree

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