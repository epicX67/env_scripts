#!/bin/bash
CLR_CYA=$CLR_RST$(tput setaf 6)
CLR_WHITE=$CLR_RST$(tput setaf 7)
CUR_DIR=`pwd`
FILE_PATH="$CUR_DIR/gdrive-linux-x64"
if [ -f "$FILE_PATH" ]; then
    echo -e "${CLR_CYA}>> Enter File ID: ${CLR_CYA}"
    read answer
    gdrive download $answer
        echo -e "${CLR_WHITE}>> DONE ${CLR_WHITE}"
else 
    wget https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-linux-x64
    sudo cp gdrive-linux-x64 /usr/local/bin/gdrive;
    sudo chmod a+x /usr/local/bin/gdrive;
    echo -e "${CLR_CYA}>> Obtain the string behind the ?id= , and paste here it will ask for permission, do that ! ${CLR_CYA}"
    echo -e "${CLR_CYA}>> Enter File ID: ${CLR_CYA}"
    read answer
    gdrive download $answer
        echo -e "${CLR_WHITE}>> DONE ${CLR_WHITE}"
fi
