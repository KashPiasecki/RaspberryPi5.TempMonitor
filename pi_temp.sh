#!/bin/bash

# Script: pi_temp.sh
# Purpose: Display the ARM CPU and GPU temperatures of Raspberry Pi 5 
# Author: Lukasz Piasecki under GPL v3
# -------------------------------------------------------

# Define color codes
CYAN='\033[0;36m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m'  # No Color

# Get the Raspberry Pi temperature
rpi_temp=$(vcgencmd measure_temp | cut -c 6-)
# Get the numeric value out of float temperature
short_rpi_temp=$(vcgencmd measure_temp | cut -c 6- | cut -c 1-2)

# Determine the color based on the temperature value
if (( $(bc <<< "$short_rpi_temp < 51") )); then
    temp_color="$CYAN"  # Cyan
elif (( $(bc <<< "$short_rpi_temp < 71") )); then
    temp_color="$GREEN"  # Green
elif (( $(bc <<< "$short_rpi_temp < 91") )); then
    temp_color="$ORANGE"  # Orange
else
    temp_color="$RED"  # Red
fi

# Print the formatted output
echo -e "$(date) ${USER}@$(hostname)"
echo "----------------------------------------------"
echo -e "Raspberry Pi Temperature: ${temp_color}$rpi_temp${NC}"
