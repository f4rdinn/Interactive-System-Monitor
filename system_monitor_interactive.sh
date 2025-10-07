#!/bin/bash

# ======================================================
#  Interactive System Monitor
# Description: User chooses which system info to view (CPU, RAM, Disk)
# Dependencies: none
# ======================================================

# ---------- Colors ----------
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m'

# ---------- Clear Screen ----------
clear
echo -e "${MAGENTA}==============================================${NC}"
echo -e "${MAGENTA}       🖥️  Interactive System Monitor        ${NC}"
echo -e "${MAGENTA}==============================================${NC}"

# ---------- User Choice ----------
echo -e "${CYAN}What information do you want to check?${NC}"
echo -e "1) CPU Usage"
echo -e "2) RAM Usage"
echo -e "3) Disk Usage"
read -p "Enter choice (1/2/3): " CHOICE

echo -e "${YELLOW}----------------------------------------------${NC}"

# ---------- CPU Usage ----------
if [ "$CHOICE" == "1" ]; then
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    CPU_INT=${CPU_USAGE%.*}
    echo -e "💻 CPU Usage: $CPU_USAGE%"

    # Optional: show per-core usage (if available)
    echo -e "${CYAN}Per-core usage:${NC}"
    mpstat -P ALL 1 1 2>/dev/null || echo "Per-core info not available"

# ---------- RAM Usage ----------
elif [ "$CHOICE" == "2" ]; then
    TOTAL_RAM=$(free -h | grep Mem | awk '{print $2}')
    USED_RAM=$(free -h | grep Mem | awk '{print $3}')
    FREE_RAM=$(free -h | grep Mem | awk '{print $4}')
    PERCENT_USED=$(free | grep Mem | awk '{printf "%.2f", $3/$2 * 100}')

    echo -e "🧠 RAM Total: $TOTAL_RAM"
    echo -e "🧠 RAM Used: $USED_RAM"
    echo -e "🧠 RAM Free: $FREE_RAM"
    echo -e "🧠 RAM Usage: $PERCENT_USED%"

# ---------- Disk Usage ----------
elif [ "$CHOICE" == "3" ]; then
    echo -e "💽 Disk Usage for /:"
    df -h / | awk 'NR==1{print $0} NR==2{print $0}'

else
    echo -e "${RED}Invalid choice! Please enter 1, 2, or 3.${NC}"
fi

echo -e "${YELLOW}----------------------------------------------${NC}"
echo -e "${MAGENTA}✅ Task Complete!${NC}"
