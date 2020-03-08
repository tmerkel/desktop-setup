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
