#!/bin/bash

# Remove old
sudo apt purge gyrator

# Package new
./package.sh

# Install new
sudo apt install ./gyrator.deb

# Show new
./test.sh
