#!/bin/sh
zenity --notification --text="Syncing password database"
rclone copy remote:pwsafe.psafe3 $HOME/GDrive/ && pasaffe
zenity --notification --text="Syncing password database"
rclone copy $HOME/GDrive/pwsafe.psafe3 remote:
