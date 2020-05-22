nvm install --lts
sudo apt update && sudo apt upgrade
sudo apt install build-essential
sudo apt install awscli

echo "Installing kubectl..."
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

echo "export AWS_CONFIG_FILE='C:\Users\tmerk\.aws\config'
export AWS_SHARED_CREDENTIALS_FILE='C:\Users\tmerk\.aws\credentials'

alias k=kubectl" >> ~/.bashrc

echo "Installing .NetCore 3.1"
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-3.1

