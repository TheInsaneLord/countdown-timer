#!/bin/bash
user=$(whoami)

# Set the countdown time (in seconds)
countdown_time=300

# Set the file path for the text file
text_file=/home/$user/countdown.txt

# Loop through the countdown time
while [ $countdown_time -gt 0 ]
do
    # Update the text file with the current countdown time
    echo "Countdown: $countdown_time seconds" > $text_file

    # Decrement the countdown time
    countdown_time=$((countdown_time-1))

    # Wait for one second before continuing the loop
    sleep 1
done

# Update the text file one last time when the countdown is finished
echo "Countdown finished" > $text_file
