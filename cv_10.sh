#!/bin/bash

ls ~ -l | grep "^l" | awk '{print; system("stat -c %U "$11)}' | tr "\n" " " | awk '{printf "soubor %s ukazuje na soubor %s s vlastníkem %s\n", $9, $11, $12}'