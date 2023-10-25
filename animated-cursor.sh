#!/bin/bash

cd assets/posy-wait-max-96/2

start=0

max=70

for ((number=start; number<=max; number+=3)); do
    filename="Posy wait max 96${number}-2.png"
    if [ -e "$filename" ]; then
        echo "Processing $filename"
	cp "$filename" 24/
    else
        echo "$filename does not exist."
    fi
done
