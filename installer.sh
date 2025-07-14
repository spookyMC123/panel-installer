#!/bin/bash

# Define colors
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
RED="\e[31m"
RESET="\e[0m"

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}Please run this script as root.${NC}"
  exit 1
fi

# Clear the terminal
clear

# Display Installer Name
echo -e "${CYAN}==============================${RESET}"
echo -e "${CYAN}        panel-Installer       ${RESET}"
echo -e "${CYAN}  BY joy and N!GHT .EXE.</>   ${RESET}"
echo -e "${CYAN}==============================${RESET}"

# Menu options
echo -e "${YELLOW}Select an option:${RESET}"
echo "1) Install pterodactyl (panel +wings with ip on vps or VM)"
echo "2) Install pterodactyl 2 (only panel free vps without paid vm ubuntu/debian)"
echo "3) Install Skyport-panel(panel + wings ubuntu/debian)"
echo "4) Install "
echo -n "Enter your choice: "
read -r choice

# Run the selected installation script
case $choice in
    1)
        echo -e "${GREEN}Installing pterodactyl...${RESET}"
        bash <(curl -s https://pterodactyl-installer.se)
        ;;
    2)
        echo -e "${GREEN}Installing pterodactyl 2...${RESET}"
        bash <(curl -s https://raw.githubusercontent.com/spookyMC123/pterodactylpaneleasyinstall/refs/heads/main/ptero.se)
        ;;
    3)
        echo -e "${GREEN}Installing Panel + Wings...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/panel.sh)
        bash <(curl -fsSL https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/node.sh)
        ;;
    4)
        echo -e "${GREEN}Installing Node.js...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/node.js.sh)
        ;;
    *)
        echo -e "${RED}Invalid choice! Please run the script again.${RESET}"
        exit 1
        ;;
esac

echo -e "${GREEN}Skyport-Installer process completed successfully!${RESET}"
