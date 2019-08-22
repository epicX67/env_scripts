#!/bin/sh
cd ~
wget https://github.com/DNI9/scripts/raw/master/gdrive
chmod +x gdrive
sudo install gdrive /usr/local/bin/gdrive
gdrive list
