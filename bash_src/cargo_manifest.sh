#!/bin/bash

# Define arrays for each cargo bay's inventory
forward_bay=("Space Suits" "Oxygen Tanks" "Repair Kits")
midship_bay=("Food Supplies" "Water Containers" "Medical Equipment")
aft_bay=("Spare Parts" "Fuel Cells" "Scientific Instruments")

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Please specify a cargo bay: forward, midship, or aft"
    exit 1
fi

# Display inventory based on the argument
if [ "$1" = "forward" ]; then
    echo "Forward Bay Inventory:"
    for i in "${!forward_bay[@]}"; do
        echo "$((i+1)). ${forward_bay[$i]}"
    done
elif [ "$1" = "midship" ]; then
    echo "Midship Bay Inventory:"
    for i in "${!midship_bay[@]}"; do
        echo "$((i+1)). ${midship_bay[$i]}"
    done
elif [ "$1" = "aft" ]; then
    echo "Aft Bay Inventory:"
    for i in "${!aft_bay[@]}"; do
        echo "$((i+1)). ${aft_bay[$i]}"
    done
else
    echo "Invalid cargo bay. Choose forward, midship, or aft."
    exit 1
fi