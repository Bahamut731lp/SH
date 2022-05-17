#!/bin/bash
echo "Chceš slyšet vtip? [Y/N]";
read chceSlysetVtip;

if [ "$chceSlysetVtip" = "Y" ]
then
        echo "Příjde takhle cápek do baru...";
else
        echo "Tak nic no";
fi;