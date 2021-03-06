param (
    [boolean]$includeWsl = 1
)

function Log-Header {
    param( [string] $Message)

    Write-Host $Message -ForegroundColor Green
}

mkdir temp

Log-Header "Installing Chocolately..."
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Log-Header "Installing OpenSSH..."
choco install openssh -y

Log-Header "Installing Git..."
choco install git -y
git config --global core.autocrlf input

Log-Header "Installing Docker Desktop..."
choco install docker-desktop  -y

Log-Header "Installing .Net Core..."
choco install dotnetcore

if ($includeWsl) {
    Log-Header "Setting up WSL 2"
    Log-Header "Getting Ubuntu 18.04..."
    curl.exe -L -o ./temp/ubuntu-1804.appx https://aka.ms/wsl-ubuntu-1804

    Log-Header "Adding Ubuntu package..."
    Add-AppxPackage .\temp\ubuntu-1804.appx

    Log-Header "Installing Ubuntu...I'm gonna need some input here..."
    ubuntu

    Log-Header "Connecting Ubuntu to WSL 2..."
    wsl --set-version Ubuntu-18.04 2

    Log-Header "Setting WSL Version to 2"
    wsl --set-default-version 2
}

Log-Header "Installing Fork..."
choco install git-fork -y

Log-Header "Installing VSCode..."
choco install vscode -y

Log-Header "Installing Fira Code..."
choco install firacode -y

Log-Header "Installing Python"
choco install python -y

Log-Header "Installing MongoDb"
choco install mongodb -y

Log-Header "Installing Node..."
choco install nodejs -y

Log-Header "Installing Yarn..."
choco install yarn -y

Log-Header "Installing Postman..."
choco install postman -y

Log-Header "Installing Firefox..."
choco install firefox -y

Log-Header "Installing Chrome..."
choco install googlechrome -y

Log-Header "Installing Slack..."
choco install slack -y

Log-Header "Installing Globel Node Packages..."
Log-Header "Installing Vue CLI..."
yarn global add @vue/cli

Log-Header "Installing Gatsby CLI..."
yarn global add gatsby-cli

Log-Header "Installing AWS CLI..."
choco install awscli -y

Log-Header "Installing PSCore..."
choco install powershell-core -y

Log-Header "Installing VSCode Extensions..."

code --install-extension "ms-vscode.csharp"
code --install-extension "msjsdiag.debugger-for-chrome"
code --install-extension "ms-vscode.powershell"
code --install-extension "esbenp.prettier-vscode"
code --install-extension "ms-vscode.vscode-typescript-tslint-plugin"
code --install-extension "christian-kohler.npm-intellisense"
code --install-extension "eg2.vscode-npm-script"
code --install-extension "sdras.night-owl"
code --install-extension "ms-vscode-remote.vscode-remote-extensionpack"
code --install-extension "ms-vscode-remote.remote-wsl"
code --install-extension "octref.vetur"
code --install-extension "ms-azuretools.vscode-docker"
code --install-extension "humao.rest-client"
code --install-extension "ms-python.python"

pip install virtualenv
pip install -U autopep8 --user
pip install -U pylint --user
