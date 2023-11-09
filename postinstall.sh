#!/bin/bash

# Include utils.sh
source ./utils.sh

# Check if the script is running as normal user
if [ "$EUID" -eq 0 ]; then
    echo -e "${RED}Please do not run this script as root!${NC}"
    exit
fi

# If we have pnpm in the system use it, otherwise tell the user to install it
if command -v pnpm &> /dev/null; then
    echo -e "${GREEN}Found pnpm in the system!${NC}"
else
    echo -e "${RED}Please install pnpm!${NC}"
    exit
fi

pnpx prisma generate

# Check the env
check_env
