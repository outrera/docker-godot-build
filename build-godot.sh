#!/bin/bash

echo "* Building godot"

cd /home/

scons p=x11 -j 4

echo "* Finished building"
