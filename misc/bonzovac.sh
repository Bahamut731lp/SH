#!/bin/bash

function najdiCloveka {
        utmpdump /var/log/wtmp 2> /dev/null | grep $1 | cut -d"[" -f9 | cut -d"T" -f1 | uniq | wc -w;
}

getent group sh | cut -d":" -f4 | tr "," "\n" | while read lidi; do printf "%-3s %s\n" $(najdiCloveka $lidi) $lidi; done;