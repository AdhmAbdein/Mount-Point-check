#!/bin/bash

path=$1

if test -e "$path"
then
    if test -d "$path"
    then
        if ! mountpoint -q "$path"
        then
            echo "this path exists but not mounted"
        else

            echo "already mounted"
        fi
    else
        echo "this path exists but is not a directory."
    fi
else
    echo "this path not exist"

fi
