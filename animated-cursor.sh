#!/bin/bash

cd assets/posy-wait-max-96/2

# Set the starting number
start=0

# Set the maximum number
max=70

# Loop from start to max with a step of 3
for ((number=start; number<=max; number+=3)); do
    # Define the filename based on the number
    filename="Posy wait max 96${number}-2.png"

    # Check if the file exists
    if [ -e "$filename" ]; then
        # Perform your action here, for example, printing the filename
        echo "Processing $filename"
	cp "$filename" 24/
        # Add your action here (e.g., copy, move, delete, etc.)
        # For example: cp "$filename" destination_directory/
    else
        echo "$filename does not exist."
    fi
done
