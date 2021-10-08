cd ~
sudo apt-get update
sudo apt install cmdtest
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install ca-certificates
sudo apt update
sudo apt-get install -y nodejs
node -v
sudo apt-get install gcc g++ make
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn && yarn --version
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 3000
cd ~/metaplex/js
yarn install
yarn bootstrap
yarn start