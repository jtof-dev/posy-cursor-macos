#!/bin/bash

cd assets/test/background/0

start=0

max=77

for ((number=start; number<=max; number+=4)); do
    filename="Posy background max 96${number}-0.png"
    if [ -e "$filename" ]; then
        echo "Processing $filename"
	cp "$filename" 24/
    else
        echo "$filename does not exist."
    fi
done
