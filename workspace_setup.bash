#!/bin/bash

main () {

    local DIRECTORY=$(pwd)

    if [[ ${#DIRECTORY} -le ${#HOME} ]]; then
        echo "This isn't a workspace"
        return
    fi

    local DIRECTORY_START=${DIRECTORY:0:${#HOME}}

    if [[ ${DIRECTORY_START} != ${HOME} ]]; then
        echo "This isn't a workspace"
        return
    fi

    while true; do

        if [[ $(pwd) = $HOME ]]; then
            echo "No setup.bash found"
            break
        fi

        if [[ -f "devel/setup.bash" ]]; then
            source devel/setup.bash
            break
        elif [[ -f "install/setup.bash" ]]; then
            source install/setup.bash
            break
        fi

        cd ..

    done

    cd $DIRECTORY

}

main
unset -f main
