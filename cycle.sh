#!/bin/bash

# Remove old
sudo apt purge chimken

# Package new
./package.sh

# Install new
sudo apt install ./chimken.deb

# Show new
./test.sh
