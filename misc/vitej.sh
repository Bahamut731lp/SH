#!/bin/bash

printf "%60s\n" " " | tr ' ' '-'
printf "Zdar borče, vítej na Perunovi\n"
printf "Dneska je %s, a na hodinách máme %s \n" "$(tput setaf 6)$(date +%d.%m.%Y)$(tput sgr0)" "$(tput setaf 6)$(date +%H:%M:%S)$(tput sgr0)"
printf "Je tady s tebou %s lidí \n" "$(tput setaf 2)$(who | cut -d' ' -f1 | sort | uniq | wc -l)$(tput sgr0)"
printf "%60s\n" " " | tr ' ' '-'