#!/bin/bash

# Define colors
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
RED="\e[31m"
RESET="\e[0m"

# Clear the terminal
clear

# Display Installer Name
echo -e "${CYAN}==============================${RESET}"
echo -e "${CYAN}      Skyport-Installer       ${RESET}"
echo -e "${CYAN}==============================${RESET}"

# Menu options
echo -e "${YELLOW}Select an option:${RESET}"
echo "1) Install Panel"
echo "2) Install Wings"
echo "3) Install Panel + Wings"
echo "4) Install Node.js"
echo -n "Enter your choice: "
read -r choice

# Run the selected installation script
case $choice in
    1)
        echo -e "${GREEN}Installing Skyport Panel...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/spookyMC123/Skyport-installer/refs/heads/main/scripts/panel.sh)
        ;;
    2)
        echo -e "${GREEN}Installing Wings...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/spookyMC123/Skyport-installer/refs/heads/main/scripts/node.sh)
        ;;
    3)
        echo -e "${GREEN}Installing Panel + Wings...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/spookyMC123/Skyport-installer/refs/heads/main/scripts/panel.sh)
        bash <(curl -fsSL https://raw.githubusercontent.com/spookyMC123/Skyport-installer/refs/heads/main/scripts/node.sh)
        ;;
    4)
        echo -e "${GREEN}Installing Node.js...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/spookyMC123/Skyport-installer/refs/heads/main/scripts/node.sh)
        ;;
    *)
        echo -e "${RED}Invalid choice! Please run the script again.${RESET}"
        exit 1
        ;;
esac

echo -e "${GREEN}Skyport-Installer process completed successfully!${RESET}"
