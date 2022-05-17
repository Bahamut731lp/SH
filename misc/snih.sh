#!/bin/bash

for i in $(seq 1 $(tput lines))
do
        for j in $(seq 1 $(tput cols))
        do
                if [ $((RANDOM % 10)) -eq 0 ]
                then
                        echo -n "*"
                else
                        echo -n " "
                fi
        done

        echo
done;