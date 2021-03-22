#!/bin/bash
sudo apt-get install openbox
export DISPLAY=:99.0
Xvfb :99 -s "-screen 0 1024x768x24" &
openbox-session &
sleep 5
