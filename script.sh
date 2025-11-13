#!/usr/bin/env bash
set -euo pipefail

# Define script names
SCRIPTS=("three.sh" "one.sh" "two.sh")

# Get today's day number (1–366)
DAY_NUMBER=$(date +%j)

# Compute index
INDEX=$(( (DAY_NUMBER - 1) % ${#SCRIPTS[@]} ))

# Pick the script
SELECTED_SCRIPT=${SCRIPTS[$INDEX]}

echo "-----------------------------------"
echo " Date: $(date)"
echo " Day number: $DAY_NUMBER"
echo " Selected script: $SELECTED_SCRIPT"
echo "-----------------------------------"

# Ensure the script is executable
chmod +x "./$SELECTED_SCRIPT"

# Run the selected script
"./$SELECTED_SCRIPT"
