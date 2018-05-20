#!/bin/sh
# Get photo from USB webcam on Raspberry Pi

# Get current time stamp
timestamp=$(date "+%Y%m%d%H%M%S")

# Switch to TimeLapse directory
cd /media/TimeLapse

# Get and save image from webcam using timestamp above
# SYNTAX: -S <skip # frames> -r <resolution> <filename>
fswebcam -S 50 -r 1280x720 $timestamp.jpg
