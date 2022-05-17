#!/bin/bash

# Přesměrování obsahu všech souborů v adresáři poezie do textového souboru basnicky.txt (u mě v home addr)
cat /home/jana/poezie/* > basnicky.txt

# Command substitution
echo $(whoami; date)

# Přesměrování výstupu do logu, >> přidá obsah na konec souboru bez přepsání původního obsahu
echo $(whoami; date) >> /home/jana/zapis_casu.log

# Výpis nového obsahu
cat /home/jana/zapis_casu.log