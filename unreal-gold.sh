#!/bin/bash

# Set the GAMEDIR inside the "" -- this is the path which contains all of the game data.
# Place it wherever you like

GAMEDIR=""

# Specify the file to run

RUN="./UnrealLinux.bin -log"

# Change directory into the GAMEDIR specified above

cd "$GAMEDIR"

# Here, we must specify the LD_LIBRARY_PATH to instruct the UnrealLinux.bin
# file to use, verify you have the 'libs' directory extracted to your install path.

LD_LIBRARY_PATH="../libs" $RUN

# Don't forget to make the script executable after writing your changes, and be sure 
# to place it in your $PATH
