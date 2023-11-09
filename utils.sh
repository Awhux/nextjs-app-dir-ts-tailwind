#!/bin/bash

# Function to verify if a command/program exists
check_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to verify if the .env file exists
check_env() {
  # If it not exists, create it
  if [ ! -f .env ]; then
    echo -e "${YELLOW}.env file not found!${NC}"
    echo -e "${YELLOW}Creating .env file...${NC}"
    cp .env.example .env
  fi
}

# Custom colors on terminal
# Usage: echo -e "${RED}This is red text${NC}"
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

