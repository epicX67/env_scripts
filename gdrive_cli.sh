#!/bin/bash
# Script by DNI9
wget https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-linux-x64
sudo cp gdrive-linux-x64 /usr/local/bin/gdrive;
sudo chmod a+x /usr/local/bin/gdrive;
echo -n " Obtain the string behind the ?id= , and paste here it will ask for permission, do that !"
echo -n "Enter the file id: (Timeout 30s)"
read -t 30 fileID
gdrive download $fileID

