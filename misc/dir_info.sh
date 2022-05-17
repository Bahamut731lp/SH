#!/bin/bash

SOUBORY=$(ls -l $1 | grep ^- | wc -l);
ADRESARE=$(ls -l $1 | grep ^d | wc -l);

echo $1;
printf "V adresáři %s je %s souborů a %s adresářů\n" "$(tput setaf 3)$(echo $1)$(tput sgr0)" "$(tput setaf 2)$(echo $SOUBORY)$(tput sgr0)" "$(tput setaf 2)$(echo $ADRESARE)$(tput sgr0)";