#!/bin/bash
# Run with sudo

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cat > /usr/share/applications/rclone_pasaffe.desktop <<+
[Desktop Entry]
Name=Remote Pasaffe
Name[en_GB]=Remote Pasaffe
Comment[en_GB]=Pasaffe password manager with rclone wrapping
Categories=GNOME;Utility;
Exec=$SCRIPT_DIR/remote_pasaffe.sh %f
Icon=$SCRIPT_DIR/pwsafe.png
Terminal=false
Type=Application
MimeType=application/x-psafe3
+
