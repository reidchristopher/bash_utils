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
        echo "No previous colcon build location found"
        break
    fi

    if [[ -f "COLCON_BUILD_HERE" ]]; then
        colcon build --symlink-install "$@"
        exit
    fi

    cd ..

done

echo "Building in current directory"

cd $DIRECTORY
touch COLCON_BUILD_HERE

colcon build --symlink-install "$@"
