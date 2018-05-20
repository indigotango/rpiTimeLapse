#!/bin/sh
# Generate daily timelapse from previous day's photos

# Generate timestamp of previous day
timestamp=$(date --date="1 days ago" "+%Y%m%d")

# Ensure script is running within user's home directory
cd /home/user

# Generate video from synced image files
# 24fps @ 1 photo per minute per day = 60 seconds of video per day
# SYNTAX: encode with H.264, high quality profile, constant quality factor of 20
ffmpeg -framerate 24 -pattern_type glob -i "TimeLapse/$timestamp*.jpg" -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p timelapse_$timestamp.mp4
