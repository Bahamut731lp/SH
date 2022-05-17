#!/bin/bash

printf "%s je borec.\n" $(who | head --lines=$((1+$RANDOM % $(who | wc -l))) | tail -1 | tr " " "\n" | head -1)