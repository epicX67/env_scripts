#!/bin/sh
cd ~
wget https://github.com/epicX67/env_scripts/raw/master/gdrive
chmod +x gdrive
sudo install gdrive /usr/local/bin/gdrive
gdrive list
