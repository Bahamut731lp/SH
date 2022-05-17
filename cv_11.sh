#!/bin/bash

# Tree
for i in $(seq $1)
do
        for j in $(seq $(($1 - i)))
        do
                echo -n " "
        done

        for k in $(seq $((2 * i + 1)))
        do
                if [ $((RANDOM % 5)) -eq 0 ]
                then
                        echo -n "-"
                else
                        echo -n "*"
                fi
        done
        printf "\n"
done