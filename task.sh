#installing git 
apt-get install -y git
git --version
#installing docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
#run containers without sudo access
usermod -aG docker root
service docker start
docker version
#install nvm
apt-get install build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash
source ~/.profile
nvm --version
#install node
apt-get install -y curl python-software-properties 
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs
#install docker compose
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version
#install openssl
apt install build-essential checkinstall zlib1g-dev libtemplate-perl
wget -c https://www.openssl.org/source/openssl-1.0.2p.tar.gz
tar -xzvf openssl-1.0.2p.tar.gz
cd openssl-1.0.2p/
./config
apt install -y make
apt install -y make-guile

