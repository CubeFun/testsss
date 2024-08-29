#!/bin/sh

echo "Welcome to YT2009 Setup the installer is currently setting up..."

echo "sleep 5 ; "Upgrading, and installing needed packages... (git, nodejs, imagemagick, ffmpeg"
yes "" | pkg update -y && pkg upgrade -y && pkg install git -y && pkg install nodejs -y && pkg install imagemagick -y && pkg install ffmpeg -y

echo "Installing YT2009 from the official repo"
yes "" | git clone https://github.com/ftde0/yt2009 && cd yt2009

echo "Building YT2009"
npm install

echo "sleep 10 ; "Now you will be going into the yt2009 setup but first find your ipv4 adress!!!"

echo "Starting Setup...."
node yt2009setup

echo "Starting post config..."
node post_config_setup

echo "Starting YT2009"
cd back && node backend_wrap

echo "Need help with something? Feel free to ask!https://www.reddit.com/user/CubeFunz/ "
