#!/bin/bash

cp /home/jana/spust_me.sh ~ -v
chmod 0555 spust_me.sh
./spust_me.sh

# Spuštění skriptu v pozadí
./spust_me.sh &

# Pozastavení skriptu
kill -STOP 30037

# Vylistování procesů
jobs

# Vylistování procesů na pozadí
bg 1

# Zabití skriptu
kill 30037

# Kontrola, jestli je skript terminated
jobs

# Vypis souboru kolikjehodin
cat kolikjehodin