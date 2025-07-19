#!/bin/bash

echo -e "${CYAN}Deamon Starting the installation process...${RESET}"

# Install Docker
echo -e "${YELLOW}Installing Docker...${RESET}"
curl -sSL https://get.docker.com/ | CHANNEL=stable bash

# Update package lists
echo -e "${YELLOW}Updating package lists...${RESET}"
sudo apt update

# Install Node.js and Git
echo -e "${YELLOW}Installing Node.js and Git...${RESET}"
sudo apt install -y nodejs git

# Clone the skyportd repository
echo -e "${YELLOW}Cloning the skyportd repository...${RESET}"
git clone https://github.com/spookyMC123/Vortex-Deamon.git

# Change to the skyportd directory
cd Vortex-Deamon

# Install dependencies
echo -e "${YELLOW}Installing npm dependencies...${RESET}"
npm install

echo "====================== Manual Instructions ======================"
echo "1. Configure token:"
echo "   Visit: https://Vortex-panel.com/admin/node"
echo "   And paste the token in Terminal"
echo ""
echo "2. Then Start the Daemon:"
echo "   node ."
echo "================================================================="
