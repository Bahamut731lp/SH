#!/bin/bash

for soubor1 in $(ls $1/*); do
for soubor2 in $(ls $1/*); do
        echo  $soubor1 $soubor2
done; done;