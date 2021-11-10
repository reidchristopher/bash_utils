#!/bin/bash

DIRECTORY=$(pwd)

if [[ ${#DIRECTORY} -le ${#HOME} ]]; then
    echo "This isn't a workspace"
    exit
fi

DIRECTORY_START=${DIRECTORY:0:${#HOME}}

if [[ ${DIRECTORY_START} != ${HOME} ]]; then
    echo "This isn't a workspace"
    exit
fi

while true; do

    if [[ $(pwd) = $HOME ]]; then
        echo "No previous build location found"
        break
    fi

    if [[ -f "COLCON_BUILD_HERE" ]]; then
        rm build/ install/ log/ -rf
        break
    elif [[ -d ".catkin_tools" ]]; then
        catkin clean -y
        break
    fi

    cd ..

done
