# rpiTimeLapse

Create a daily time lapse video using a Raspberry Pi, USB webcam, and a Linux virtual machine.

Requirements:
- Raspberry Pi, newer generation capable of easily processing 720p or greater video/photos
- Linux instance, virtual or physical, with plenty of free space for photo and video processing
- File server, with plenty of free space for storing generated video (optional)
- Telegram bot for sharing of generated time lapse video

Basic (comma very) setup steps:
- Ensure USB webcam is connected to Raspberry Pi, and is working properly. Ensure 'fswebcam' application is installed for image capture
- Place "timelapse.sh" on Raspberry Pi, configured to run on-the-minute, every minute, via crontab
- Configure Raspberry Pi to rsync output photo files to Linux instance for processing at the top of every hour, via crontab
- Place "timelapse_generate.sh" and "timelapse_distro.sh" on Linux instance for processing of previous day's time lapse images. Configure "timelapse_generate.sh" to run after previous day's photos have been uploaded, and "timelapse_distro.sh" to run after generation. Edit "timelapse_distro.sh" as needed to accomodate the desired Telegram group for the sharing of video files.
