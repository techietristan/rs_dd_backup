#!/bin/bash

#exit the script if any command fails
set -e

requiredUtils=("dd" "rsync")

#loop over the utilites required by this script and check if they are installed. if not, prompt the user to install them and exit.
for requiredUtil in ${requiredUtils[@]}
do
    if ! type $requiredUtil &>/dev/null ; then
        echo $requiredUtil is required but not installed.
        exit 1
    fi
done