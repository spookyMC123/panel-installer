sudo apt install systemctl

curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh?any=true | sudo bash
sudo apt update
sudo apt-get install pufferpanel

sudo su
sudo pufferpanel user add

echo "then run pufferpanel run then run panel at 8080 port"