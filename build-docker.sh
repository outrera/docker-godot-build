#!/bin/bash


# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPTPATH=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
PROJECTPATH=$(dirname "$SCRIPTPATH")


docker build -t quentincaffeino/godot-build $PROJECTPATH
