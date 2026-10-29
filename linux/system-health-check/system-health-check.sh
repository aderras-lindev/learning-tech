#!/bin/bash

# ==============================================================================
# Script Name:  system-health-check.sh
# Description:  A lightweight script to monitor Linux system health resources.
# ==============================================================================

# Colors for clean terminal output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}===============================================${NC}"
echo -e "${BLUE}          SYSTEM HEALTH CHECK DASHBOARD        ${NC}"
echo -e "${BLUE}===============================================${NC}"
echo ""

# 1. Check Disk Usage
echo -e "${GREEN}[1] Checking Disk Usage (Root Partition)...${NC}"
# Displays the available space on the main root partition (/)
df -h / | awk 'NR==2 {print "Total/Used/Available: " $2 " / " $3 " / " $4 " (" $5 " used)"}'
echo ""

# 2. Check Memory (RAM) Usage
echo -e "${GREEN}[2] Checking Memory (RAM) Usage...${NC}"
# Displays current free and used memory in Megabytes
free -m | awk 'NR==2 {print "Total: " $2 "MB | Used: " $3 "MB | Free: " $4 "MB"}'
echo ""

# 3. Check Logged-in Users
echo -e "${GREEN}[3] Checking Currently Logged-in Users...${NC}"
# Counts active users on the system
USER_COUNT=$(who | wc -l)
if [ "$USER_COUNT" -eq 0 ]; then
    echo "No users are currently logged in."
else
    echo "Total logged-in users: $USER_COUNT"
    who
fi

echo ""
echo -e "${BLUE}===============================================${NC}"
echo -e "${BLUE}               Check Completed                 ${NC}"
echo -e "${BLUE}===============================================${NC}"
