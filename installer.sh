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
echo "4) Install draco panel's"
echo "5) Install puffer (all in one github codespce and vps)"
echo "6) "
echo "7) install dashboad"
echo "8) install Deamon (for 3,4,6,7 when Deamon not installed)
echo "more panel are coming soon!!"
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
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/skyport/installer.sh)
        bash <(curl -fsSL https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/node.sh)
        ;;
    4)
        echo -e "${GREEN}Installing draro v1...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/spookyMC123/panel-installer/refs/heads/main/script/draco-v1/installer.sh)
        ;;
    5)
        echo -e "${GREEN}Installing Pufferpanel...${RESET}"
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/blob/main/script/puffer%20panel/installpuffer.sh)
        ;;
    6)
        echo -e "${GREEN}Installing draco v3...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/spookyMC123/panel-installer/refs/heads/main/script/draco-v1/installer.sh)
        ;;
    7)
        echo -e "${GREEN}Installing Puffer panel...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/spookyMC123/panel-installer/refs/heads/main/script/draco-v1/installer.sh)
        ;;

    *)
        echo -e "${RED}Invalid choice! Please run the script again.${RESET}"
        exit 1
        ;;
esac

echo -e "${GREEN}Skyport-Installer process completed successfully!${RESET}"
