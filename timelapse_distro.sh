#!/bin/sh

# Generate timestamp of previous day
timestamp=$(date --date="1 days ago" "+%Y%m%d") # 20180519
timestampPretty=$(date --date="1 days ago" "+%A, %d %b %Y")# Saturday, 19 May 2018

# Ensure script is running within user's home directory
cd /home/user

# Upload generated video file to Telegram group
# Telegram group ID is hard coded into URL!
curl -s -X POST "https://api.telegram.org/bot<bot API key>/sendVideo" -F chat_id=-<group ID after - symbol> -F video="@timelapse_$timestamp.mp4" -F caption="Timelapse for $timestampPretty"

# Upload generated video file to file server
rsync --remove-source-files ~/timelapse_$timestamp.mp4 <file server user>@<file server IP>:<file server path>
