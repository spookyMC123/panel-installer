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
echo -e "${CYAN}         draco-Dash           ${RESET}"
echo -e "${CYAN}==============================${RESET}"

# Menu options
echo -e "${YELLOW}Select an option:${RESET}"
echo "1) Install draco-dashboard"
echo "2) Install dashboard-v1.0.0"
echo "3) install dash-v2"
echo "0) back to panel-installer"
echo -n "Enter your choice: "
read -r choice

# Run the selected installation script
case $choice in
    1)
        echo -e "${GREEN}Installing Draco dash...${RESET}"
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/DashBoad/overseeinstall.sh)
        ;;
    2)
        echo -e "${GREEN}Installing Dash v1...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/node.sh)
        ;;
    3)
        echo -e "${GREEN}Installing Dash v2...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/node.sh)
        ;;
     0)
        echo -e "${GREEN}Backing...${RESET}"
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/installer.sh)
        ;;

    *)
        echo -e "${RED}Invalid choice! Please run the script again.${RESET}"
        exit 1
        ;;
esac

echo -e "${GREEN}DashBoad process completed successfully!${RESET}"
