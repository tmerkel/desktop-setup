param (
    [boolean]$includeWsl = 1
)

function Log-Header {
    param( [string] $Message)

    Write-Host $Message -ForegroundColor Green
}

mkdir temp

# Chocolately
Log-Header "Installing Chocolately..."
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Log-Header "Installing OpenSSH..."
choco install openssh -y

Log-Header "Installing Git..."
choco install git -y

Log-Header "Installing .Net Core 3.0..."
choco install dotnetcore-sdk --pre -y

if ($includeWsl) {
    # WSL
    Log-Header "WSL!"
    Log-Header "Getting Ubuntu 18.04..."
    curl.exe -L -o ./temp/ubuntu-1804.appx https://aka.ms/wsl-ubuntu-1804

    Log-Header "Adding Ubuntu package..."
    Add-AppxPackage .\temp\ubuntu-1804.appx

    Log-Header "Installing Ubuntu...I'm gonna need some input here..."
    ubuntu

    Log-Header "Installing WSL..."
    wsl --set-version Ubuntu-18.04 2
}

# Sourcetree
Log-Header "Installing Sourcetree..."
choco install sourcetree -y 

# VSCode
Log-Header "Installing VSCode..."
choco install vscode -y 

Log-Header "Installing Fira Code..."
choco install firacode -y

Log-Header "Installing Extensions..."

code --install-extension "ms-vscode.csharp"
code --install-extension "msjsdiag.debugger-for-chrome"
code --install-extension "ms-vscode.powershell"
code --install-extension "esbenp.prettier-vscode"
code --install-extension "ms-vscode.vscode-typescript-tslint-plugin"
code --install-extension "christian-kohler.npm-intellisense"
code --install-extension "eg2.vscode-npm-script"
code --install-extension "sdras.night-owl"
code --install-extension "ms-vscode-remote.remote-wsl"

Log-Header "Installing Node..."
choco install nodejs -y

Log-Header "Installing Yarn..."
choco install yarn -y

Log-Header "Installing Postman..."
choco install postman -y

Log-Header "Installing Firefox..."
choco install firefox -y