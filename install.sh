#!/bin/bash

# COnfiguration
NAME=gyrator

# Install
if [ -e "${PWD}/${NAME}.deb" ]; then
  sudo apt-get install "./${NAME}.deb"
else
  echo -e "No .deb package found. Run install.sh to create one."
fi