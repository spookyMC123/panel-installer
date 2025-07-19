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
echo -e "${CYAN}      DashBoad-Installer       ${RESET}"
echo -e "${CYAN}==============================${RESET}"

# Menu options
echo -e "${YELLOW}Select an option:${RESET}"
echo "1) Install Oversee"
echo "2) Install Draco DashBoad's"
echo -n "Enter your choice: "
read -r choice

# Run the selected installation script
case $choice in
    1)
        echo -e "${GREEN}Installing Skyport Panel...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/panel.sh)
        ;;
    2)
        echo -e "${GREEN}Installing Wings...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/node.sh)
        ;;

    *)
        echo -e "${RED}Invalid choice! Please run the script again.${RESET}"
        exit 1
        ;;
esac

echo -e "${GREEN}DashBoad process completed successfully!${RESET}"
