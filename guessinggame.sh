#!/bin/bash

function guessinggame {
    local num_files=$(ls -l | grep "^-" | wc -l)
    local guess=-1

    while [ $guess -ne $num_files ]; do
        read -p "How many files are in the current directory? " guess

        if [ $guess -lt $num_files ]; then
            echo "Too low."
        elif [ $guess -gt $num_files ]; then
            echo "Too high."
        else
            echo "Congratulations! That's correct."
        fi
    done
}

guessinggame
