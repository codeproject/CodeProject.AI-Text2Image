#!/bin/bash

# Development mode setup script ::::::::::::::::::::::::::::::::::::::::::::::
#
#                            Text2Image
#
# This script is called from the SuperResolution directory using: 
#
#    bash ../../CodeProject.AI-Server/src/setup.sh
#
# The setup.sh script will find this install.sh file and execute it.
#
# For help with install scripts, notes on variables and methods available, tips,
# and explanations, see /src/modules/install_script_help.md

if [ "$1" != "install" ]; then
    read -t 3 -p "This script is only called from: bash ../../CodeProject.AI-Server/src/setup.sh"
    echo
    exit 1 
fi

# Download the YOLO models from the CodeProject models/ folder and store in /assets 
# getFromServer "models/" "models-yolo8-pt.zip"  "assets" "Downloading Standard YOLO models..."