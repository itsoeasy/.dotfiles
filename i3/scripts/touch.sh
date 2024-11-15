#!/bin/bash

# Replace "Touchpad" with the exact name of your device found in Step 1
DEVICE_NAME="11"

# Enable tap-to-click
xinput set-prop "$DEVICE_NAME" "libinput Tapping Enabled" 1

# Enable natural scrolling
#xinput set-prop "$DEVICE_NAME" "libinput Natural Scrolling Enabled" 1

# Enable palm detection
xinput set-prop "$DEVICE_NAME" "libinput Palm Detection Enabled" 1

# Enable other gestures if needed
#xinput set-prop "$DEVICE_NAME" "libinput Horizontal Scroll Enabled" 1
xinput set-prop "$DEVICE_NAME" "libinput Middle Emulation Enabled" 1

echo "Touchpad gestures enabled for $DEVICE_NAME"

