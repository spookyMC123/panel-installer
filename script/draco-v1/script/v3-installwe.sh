echo "install pack"
curl -sL https://deb.nodesource.com/setup_20.x | sudo bash -
sudo apt-get install nodejs -y
echo "install panel"
git clone https://github.com/dragonlabsdev/v3panel.git
echo "unzip install"
cd v3panel && sudo apt install zip -y && unzip panel.zip && cd panel
echo "panel installed!"
npm install && npm run seed && npm run createUser && node .
