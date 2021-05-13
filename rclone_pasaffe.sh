#!/bin/sh
rclone copy remote:pwsafe.psafe3 $HOME/GDrive/ |
    zenity --progress --pulsate --auto-close --text="Copying password database from remote"
pasaffe
rclone copy $HOME/GDrive/pwsafe.psafe3 remote: |
    zenity --progress --pulsate --auto-close --text="Copying password database to remote"
