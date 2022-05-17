#!/bin/bash

if [ $1 -lt 0 ]
then
        echo "No moment... jak jako záporné pivo?";
elif [ $1 -eq 0 ]
then
        echo "Nedáš si pivo..."
elif [ $1 -eq 1 ]
then
        echo "Dáš si 1 pivo"
elif [ $1 -gt 1 ] && [ $1 -le 4 ]
then
        printf "Dáš si %s piva\n" $1
else
        printf "Dáš si %s piv.\n" $1
fi