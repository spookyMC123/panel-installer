#!/bin/bash

# Define colors and styles
BG_MAGENTA="\e[45m"
BG_BLUE="\e[44m"
BG_CYAN="\e[46m"
BG_GRAY="\e[100m"

BRIGHT_GREEN="\e[92m"
BRIGHT_YELLOW="\e[93m"
BRIGHT_CYAN="\e[96m"
BRIGHT_WHITE="\e[97m"

GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
RED="\e[31m"
GRAY="\e[90m"
RESET="\e[0m"

BOLD="\e[1m"
UNDERLINE="\e[4m"

# Emojis
EMOJI_ROCKET="🚀"
EMOJI_GEAR="⚙️"
EMOJI_CHECK="✅"
EMOJI_WARNING="⚠️"
EMOJI_FIRE="🔥"
EMOJI_PANEL="🧩"
EMOJI_COMING="⏳"
EMOJI_DASH="📊"
EMOJI_DAEMON="🛠️"
EMOJI_RETRY="🔁"

# Check if script is run as root
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}${BOLD}${EMOJI_WARNING} Error: Please run this script as root!${RESET}"
  exit 1
fi

# Clear screen
clear

# Installer Header
echo -e "${CYAN}${BOLD}"
echo -e "╔══════════════════════════════════════════════════╗"
echo -e "║          ${EMOJI_ROCKET} Panel Installer by Joy/N!GHT .EXE </>         ║"
echo -e "╚══════════════════════════════════════════════════╝"
echo -e "${RESET}"

# Menu
echo -e "${YELLOW}${BOLD}📦 Select an option below to install:${RESET}"
echo -e "${BRIGHT_CYAN}━━━━━━━━━━━━━━━━ ${EMOJI_PANEL} Install Panels ${EMOJI_PANEL} ━━━━━━━━━━━━━━━━${RESET}"
echo -e "${GREEN} 1)${RESET} ${BOLD}Pterodactyl Panel${RESET}          ${GRAY}${EMOJI_FIRE}  VPS/VM Full Installer"
echo -e "${GREEN} 2)${RESET} ${BOLD}Skyport Panel${RESET}              ${GRAY}${EMOJI_ROCKET}  Lightweight & Fast"
echo -e "${GREEN} 3)${RESET} ${BOLD}Draco Panel${RESET}                ${GRAY}${EMOJI_GEAR}  Advanced Custom Panel"
echo -e "${GREEN} 4)${RESET} ${BOLD}Pufferpanel${RESET}                ${GRAY}${EMOJI_ROCKET}  VPS or Codespace Ready"
echo -e "${GREEN} 5)${RESET} ${BOLD}PowerPort Panel${RESET}            ${GRAY}${EMOJI_GEAR}  Fast Setup Panel"
echo -e "${GREEN} 6)${RESET} ${BOLD}Coming Soon...${RESET}              ${GRAY}${EMOJI_COMING}  Stay Tuned!"

echo -e "${BRIGHT_CYAN}━━━━━━━━━━━━━━━ ${EMOJI_DASH} Install Dashboards ${EMOJI_DASH} ━━━━━━━━━━━━━━━${RESET}"
echo -e "${GREEN} 7)${RESET} ${BOLD}Dashboard UI${RESET}               ${GRAY}${EMOJI_DASH}  Modern Web View"

echo -e "${BRIGHT_CYAN}━━━━━━━━━━━━━━━ ${EMOJI_DAEMON} Install Daemon ${EMOJI_DAEMON} ━━━━━━━━━━━━━━━━${RESET}"
echo -e "${GREEN} 8)${RESET} ${BOLD}Daemon Installer${RESET}           ${GRAY}${EMOJI_DAEMON}  Required for panels"

# Prompt input
echo -ne "\n${BOLD}${CYAN}👉 Enter your choice [1-8]: ${RESET}"
read -r choice

# Process choice
case $choice in
  1)
    echo -e "${BRIGHT_GREEN}${EMOJI_CHECK} Installing Pterodactyl Panel...${RESET}"
    bash <(curl -fsSL https://raw.githubusercontent.com/spookyMC123/panel-installer/main/script/ptrodactyl/install.sh)
    ;;
  2)
    echo -e "${BRIGHT_GREEN}${EMOJI_CHECK} Installing SkyPort Panel...${RESET}"
    bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/skyport/installer.sh)
    ;;
  3)
    echo -e "${BRIGHT_GREEN}${EMOJI_CHECK} Installing Draco Panel...${RESET}"
    bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/draco-v1/installer.sh)
    ;;
  4)
    echo -e "${BRIGHT_GREEN}${EMOJI_CHECK} Installing Pufferpanel...${RESET}"
    bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/puffer%20panel/installpuffer.sh)
    ;;
  5)
    echo -e "${BRIGHT_GREEN}${EMOJI_CHECK} Installing PowerPort Panel...${RESET}"
    bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/powerport/install.sh)
    ;;
  6)
    echo -e "${BRIGHT_YELLOW}${EMOJI_COMING} More panels are in development!${RESET}"
    echo -e "${BG_MAGENTA}${BOLD} 🔁 Returning to main menu in 5 seconds... ${RESET}"
    sleep 5
    bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/installer.sh)
    ;;
  7)
    echo -e "${BRIGHT_GREEN}${EMOJI_CHECK} Installing Dashboard UI...${RESET}"
    bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/DashBoad/install.sh)
    ;;
  8)
    echo -e "${BRIGHT_GREEN}${EMOJI_CHECK} Installing Daemon...${RESET}"
    bash <(curl -fsSL https://github.com/spookyMC123/panel-installer/raw/refs/heads/main/script/deamon/install.sh)
    ;;
  *)
    echo -e "${RED}${BOLD}${EMOJI_WARNING} Invalid input! Please rerun and enter a number 1-8.${RESET}"
    exit 1
    ;;
esac

# Completion message
echo -e "\n${BRIGHT_GREEN}${BOLD}${EMOJI_CHECK} Installation Completed Successfully! Enjoy your panel. 🚀${RESET}"
