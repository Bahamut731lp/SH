#!/bin/bash

SUMA=0;

while [ "$1" != "" ]
do
        SUMA=$(( $SUMA + $1 ));
        shift;
done

echo $SUMA;