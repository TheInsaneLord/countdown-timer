#!/bin/bash

# Set the countdown time (in hours, minutes, and seconds)
hours=0
minutes=5
seconds=0
countdown_time=$((hours*3600 + minutes*60 + seconds))

# Get the path of the script's directory and append the file name
text_file="$(dirname "$0")/countdown.txt"

# Loop through the countdown time
while [ $countdown_time -gt 0 ]
do
    # Convert the countdown time to hours, minutes, and seconds
    if [ $countdown_time -ge 3600 ]; then
        hours=$((countdown_time/3600))
        minutes=$((countdown_time%3600/60))
        seconds=$((countdown_time%60))
        countdown=$(printf "%02d:%02d:%02d" $hours $minutes $seconds)
    else
        minutes=$((countdown_time/60))
        seconds=$((countdown_time%60))
        countdown=$(printf "%02d:%02d" $minutes $seconds)
    fi
    
    # Update the text file with the current countdown time
    echo "$countdown" > $text_file

    # Decrement the countdown time
    countdown_time=$((countdown_time-1))

    # Wait for one second before continuing the loop
    sleep 1
done

# Update the text file one last time when the countdown is finished
echo "Countdown finished" > $text_file
