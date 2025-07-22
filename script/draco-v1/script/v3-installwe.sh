#!/bin/bash

# Define colors
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
RED="\e[31m"
RESET="\e[0m"


# Start installation
echo -e "${CYAN}Installing Node.js 20...${RESET}"
curl -sL https://deb.nodesource.com/setup_20.x | sudo bash -
sudo apt-get install -y nodejs

# Clone the panel repository
echo -e "${CYAN}Cloning the panel repository...${RESET}"
git clone https://github.com/dragonlabsdev/v3panel.git

# Move into directory and unzip
echo -e "${CYAN}Unzipping panel...${RESET}"
cd v3panel || { echo -e "${RED}Failed to enter v3panel directory!${RESET}"; exit 1; }
sudo apt install -y zip unzip
unzip panel.zip
cd panel || { echo -e "${RED}Failed to enter panel directory!${RESET}"; exit 1; }

# Install dependencies and start
echo -e "${CYAN}Installing dependencies and starting panel...${RESET}"
npm install
npm run seed
npm run createUser
node .

echo -e "${GREEN}✅ Panel installation complete!${RESET}"
