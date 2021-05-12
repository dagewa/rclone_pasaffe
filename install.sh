#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
DESKTOP_FILE=$HOME/.local/share/applications/rclone_pasaffe.desktop
cat > $DESKTOP_FILE <<+
[Desktop Entry]
Name=Remote Pasaffe
Name[en_GB]=Remote Pasaffe
Comment[en_GB]=Pasaffe password manager with rclone wrapping
Categories=GNOME;Utility;
Exec=$SCRIPT_DIR/rclone_pasaffe.sh %f
Icon=$SCRIPT_DIR/pwsafe.png
Terminal=false
Type=Application
+
chmod +x $DESKTOP_FILE
