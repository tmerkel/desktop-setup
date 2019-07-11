function Log-Header {
    param( [string] $Message)

    Write-Host $Message -ForegroundColor Green
}
#Chocolately
Log-Header "Installing Chocolately..."
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))