#!/bin/bash

# Configuration
NAME=chimken

# Remove old .deb
if [ -e "${PWD}/${NAME}.deb" ]; then
  sudo echo -e "Removing old ${NAME}.deb"
  rm "${PWD}/${NAME}.deb"
fi

# Build new .deb
if [ "$1" == "-d" ]; then
  dpkg-deb --build "${PWD}/${NAME}"
else
  echo -e "Building new ${NAME}.deb"
  dpkg-deb --build "${PWD}/${NAME}" &> /dev/null
fi

# Modify permissions
chmod 775 "${PWD}/${NAME}.deb"
