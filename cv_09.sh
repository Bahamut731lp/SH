#!/bin/bash

DELKA=$1;
VYSKA=$2;

i=1;

while [[ $i -le $VYSKA ]]
do
        if [[ i -eq 1 ]] || [[ i -eq $VYSKA ]];
                then echo $(head -c"$DELKA" < /dev/zero | tr "\0" "-" | sed -e 's/^./\./' -e 's/.$/\./');
        else
                echo $(head -c"$DELKA" < /dev/zero | tr "\0" "1") | grep -o . | while read character; do if [[ $(($RANDOM % ($DELKA * $VYSKA))) -le $(($i * $DELKA - ($VYSKA / 2))) ]]; then printf "○"; else printf " "; fi; done | sed -e 's/^./\|/' -e 's/.$/\|/';
                printf "\n";
        fi;

        let i++;
done

printf "\n"