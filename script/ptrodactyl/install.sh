#!/bin/bash

# Define colors
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
RED="\e[31m"
RESET="\e[0m"
BG_BLACK="\e[40m"
BG_RED="\e[41m"
BG_GREEN="\e[42m"
BG_YELLOW="\e[43m"
BG_BLUE="\e[44m"
BG_MAGENTA="\e[45m"
BG_CYAN="\e[46m"
BG_WHITE="\e[47m"


# Clear the terminal
clear

# Display Installer Name
echo -e "${CYAN}==============================${RESET}"
echo -e "${CYAN}      ptero-Installer       ${RESET}"
echo -e "${CYAN}==============================${RESET}"


# Menu options
echo -e "${YELLOW}Select an option:${RESET}"
echo -e "${BG_BLUE}1)${RESET} Install pterodactl (on vps using Ipv4/with Wings)"
echo -e "${BG_BLUE}2)${RESET} Install pterodactl 2 (on github without Ipv4)"
echo -ne "${YELLOW}Enter your choice: ${RESET}"
read -r choice

# Run the selected installation script
case $choice in
    1)
        echo -e "${GREEN}Installing ptropanel Panel...${RESET}"
        bash <(curl -fsSL https://pterodactyl-installer.se)
        ;;
    2)
        echo -e "${GREEN}Installing ptero panel 2...${RESET}"
        bash <(curl -fsSL https://raw.githubusercontent.com/spookyMC123/pterodactylpaneleasyinstall/refs/heads/main/ptero.se)
        ;;

    *)
        echo -e "${RED}Invalid choice! Please run the script again.${RESET}"
        exit 1
        ;;
esac

# Final message
echo -e "${CYAN}==========================================${RESET}"
echo -e "${GREEN} Ptrodactyl Install process completed!$  ${RESET}"
echo -e "${CYAN}==========================================${RESET}"
