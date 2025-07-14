#!/bin/bash

# Define colors
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
RED="\e[31m"
RESET="\e[0m"

echo -e "${CYAN}Starting the installation process...${RESET}"

# Install necessary dependencies
echo -e "${YELLOW}Installing systemctl and gnupg...${RESET}"
sudo apt update
sudo apt install -y systemctl gnupg sudo curl

# Create the keyrings directory
echo -e "${YELLOW}Creating keyrings directory...${RESET}"
sudo mkdir -p /etc/apt/keyrings

# Add NodeSource GPG key
echo -e "${YELLOW}Adding NodeSource GPG key...${RESET}"
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# Add NodeSource repository
echo -e "${YELLOW}Adding Node.js repository...${RESET}"
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

# Update package lists and install dependencies
echo -e "${YELLOW}Updating package lists...${RESET}"
sudo apt update

echo -e "${YELLOW}Installing Node.js, Git, and dpkg...${RESET}"
sudo apt install -y nodejs git dpkg

# Clone the repository
echo -e "${YELLOW}Cloning the panel5 repository...${RESET}"
git clone https://github.com/spookyMC123/panel5.git

# Change to the cloned directory
cd panel5

# Install dependencies
echo -e "${YELLOW}Installing npm dependencies...${RESET}"
npm install

# Run database setup
echo -e "${YELLOW}Running database setup...${RESET}"
npm run seed

# Create user
echo -e "${YELLOW}Creating user...${RESET}"
npm run createUser

echo -e "${YELLOW}starting skyport...${RESET}"
node .
