#!/bin/bash

# Define colors
BG_BLACK="\e[40m"
BG_RED="\e[41m"
BG_GREEN="\e[42m"
BG_YELLOW="\e[43m"
BG_BLUE="\e[44m"
BG_MAGENTA="\e[45m"
BG_CYAN="\e[46m"
BG_WHITE="\e[47m"


BRIGHT_BLACK="\e[90m"
BRIGHT_RED="\e[91m"
BRIGHT_GREEN="\e[92m"
BRIGHT_YELLOW="\e[93m"
BRIGHT_BLUE="\e[94m"
BRIGHT_MAGENTA="\e[95m"
BRIGHT_CYAN="\e[96m"
BRIGHT_WHITE="\e[97m"

GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
RED="\e[31m"
RESET="\e[0m" # Reset all styles
#style
BOLD="\e[1m"
DIM="\e[2m"
UNDERLINE="\e[4m"
BLINK="\e[5m"
REVERSE="\e[7m"
HIDDEN="\e[8m" 



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
echo -e "${GREEN}---------------------Install-Panel-------------------------${RESET} "
echo -e "${GREEN}1)${RESET} Install pterodactyl (panel +wings with ip on vps or VM)"
echo -e "${GREEN}2)${RESET} Install Skyport-panel(panel + wings ubuntu/debian)"
echo -e "${GREEN}3)${RESET} Install draco panel's"
echo -e "${GREEN}4)${RESET} Install puffer (all in one github codespce and vps)"
echo -e "${GREEN}5)${RESET} Install PowerPort panel"
echo -e "${GREEN}6)${RESET} More panel commin"
echo -e "${GREEN}--------------------Install-DashBoad-----------------------${RESET} "
echo -e "${GREEN}7)${RESET} install dashboad"
echo -e "${GREEN}--------------------Install-Deamon-------------------------${RESET} "
echo -e "${GREEN}8)${RESET} install Deamon (for 3,4,6,7 when Deamon not installed)"
echo "more panel are coming soon"
echo -n "Enter your choice: "
read -r choice

# Run the selected installation script
case $choice in
    1)
        echo -e "${GREEN}Installing pterodactyl...${RESET}"
        bash <(curl -fsSl https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/ptrodactyl/install.sh)
        ;;
    2)
        echo -e "${GREEN}Installing SkyPort...${RESET}"
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/skyport/installer.sh)
        ;;
    3)
        echo -e "${GREEN}Installing draro panel's...${RESET}"
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/draco-v1/installer.sh)
        ;;
    4)
        echo -e "${GREEN}Installing Pufferpanel...${RESET}"
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/puffer%20panel/installpuffer.sh)
        ;;
    5)
        echo -e "${GREEN}Installing powerport panel...${RESET}"
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/powerport/install.sh)
        ;;
    6)
        echo -e "${GREEN}Sorry more panel is comming!${RESET}"
        echo -e "${BG_MAGENTA}----------------------------${RESET}"
        echo -e "${RED}backing-in-5-sec${RESET}"
        sleep 5
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/installer.sh)
        ;;
    7)
        echo -e "${GREEN}Installing Dashboad...${RESET}"
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/DashBoad/install.sh)
        ;;
    8)
        echo -e "${GREEN}Installing Deamon...${RESET}"
        bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/deamon/install.sh)
        ;;


    *)
        echo -e "${RED}Invalid choice! Please run the script again.${RESET}"
        exit 1
        ;;
esac

echo -e "${GREEN}panel-Installer process completed successfully!${RESET}"
