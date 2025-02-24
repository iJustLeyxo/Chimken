#!/bin/bash

# Test plymouth theme
sudo plymouthd
sudo plymouth --show-splash
sleep 10
sudo killall plymouthd

# sudo plymouthd ; sudo plymouth --show-splash ; sleep 10 ; sudo killall plymouthd