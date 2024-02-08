
# Countdown Timer

this is a countdown timer for use on Linux and Mac with OBS or similar applacations that will allow a user to display text from a text file that will aoutomaticly update the displayed text

this operates simarly to the applacation known as [Snaz](https://github.com/JimmyAppelt/Snaz) by [@JimmyAppelt](https://github.com/JimmyAppelt) that runs on windows however this aplacation is just a simple script with no GUI.

## My Socials

- Github [TheInsaneLord](https://github.com/TheInsaneLord)
- Twitch [the_insane_lord](https://www.twitch.tv/the_insane_lord)
- Twitter [@TheInsane_L](https://twitter.com/TheInsane_L)

## How to use it

to use this script run the following commands in a terminal
```shell
cd countdown-timer/version/
nano v5-countdown.sh
```
then edit the timer as you need to by changing the varables
- hours
- minutes
- seconds

for example to set the timmer to count down from 5:30 set the varebles to
```bash
hours=0
minutes=5
seconds=30
```
then to run the script 
```
bash v5-countdown.sh 
```

this will start the countdown automaticly and out put the countdown to the countdown.txt and will overwrite the data inside the file. at the end of the countdown the timmer will be repaceed with "Countdown finished" this can be changed by editing the line containg.
```
echo "Countdown finished" > $text_file
```
