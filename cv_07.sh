#!/bin/bash

echo "Dáš si kafe, nebo čaj?"

ZACATEK=$(date +%s)

read Napoj

KONEC=$(date +%s)
DIFF=$(($KONEC - $ZACATEK))

printf "Uživatel by si dal %s, a trvalo mu to %ss\n" $Napoj $DIFF