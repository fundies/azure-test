#!/bin/bash

sudo apt-get update
sudo apt-get -y install libboost-program-options-dev pulseaudio libyaml-cpp-dev libpugixml-dev rapidjson-dev libprotobuf-dev protobuf-compiler zlib1g-dev libglm-dev libalure-dev libvorbisfile3 libvorbis-dev libdumb1-dev libgtk2.0-dev zenity kdialog libpng-dev libbox2d-dev libbullet-dev libfreetype6-dev libsdl2-dev libdrm-dev libgbm-dev libgtest-dev libepoxy-dev libegl1-mesa-dev libgles2-mesa-dev libglew-dev libxrandr-dev libxinerama-dev
sudo apt-get -y install openbox mesa-utils wmctrl xdotool xll-apps

#git clone https://github.com/enigma-dev/enigma-dev.git
#cd enigma-dev
#git checkout cifixes
#make all

export ASAN_OPTIONS=detect_leaks=0;
export LIBGL_ALWAYS_SOFTWARE=1
export DISPLAY=:99.0
Xvfb :99 -s "-screen 0 1024x768x24" &
openbox-session &
sleep 5
#./emake -o /tmp/test -r &
xclock &
sleep 5
wmctrl -l
