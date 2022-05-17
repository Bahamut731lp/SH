#!/bin/bash

declare -A slovaVJazyku;

JAZYKY=$(find /usr/share/dict/ -type f -size +500 | cut -d"/" -f5);

#Načtení možných jazyků
for jazyk in $JAZYKY
do
        if [[ $jazyk == *"cracklib"* ]]; then continue; fi;
        slovaVJazyku[$jazyk]=0;
done

#Prohledání jednotlivých slov ve slovnících
for variable in "$@"
do
        SHODY=$(grep -Hxr  --include="*" "$variable" /usr/share/dict | cut -d"/" -f5 | tr ":" " ");

        for shoda in $SHODY
        do
                if [ -v "slovaVJazyku[$shoda]" ]; then ((slovaVJazyku[$shoda]++)); fi;
        done
done

#Vypsání počtu shod napříč všemi slovníky
SERAZENE=$(for k in "${!slovaVJazyku[@]}"; do echo "$k : ${slovaVJazyku["$k"]}"; done | sort -k3,3rn -k1,1 | tr -d " ");
NEJVYSSI=$(echo $SERAZENE | cut -d" " -f1 | cut -d":" -f2)

#Formátování výstupu
VYSLEDEK=$(echo $SERAZENE | tr " " "\n" | grep $NEJVYSSI | cut -d":" -f1);

if [[ $NEJVYSSI -eq 0 ]]
then
        printf "This language has not it's dictionary in /usr/share/dict. \n"
else
        printf "It is probably %s \n" $VYSLEDEK
fi;