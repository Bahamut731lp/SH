#!/bin/bash

# Vytvoření a přesunutí se do adresáře koukej
mkdir koukej
cd koukej/

# Vytvoření prázdných adresářů s jmény lidí ve skupině SH
mkdir $(getent group sh | cut -d: -f4 | sed 's/,/\n/g')

# Změna práv na těhle složkách
chmod 0775 *

# Nalezení adresáře s názvem koukej v /home
find /home -type d -name "koukej" 2> /dev/null 

# Přesunutí do domovského adresáře
cd

# Vytvoření .plan souboru
touch .plan

# Upravení .plan souboru v nano
nano .plan

# Získání informací o uživateli kevin.danek
finger kevin.danek