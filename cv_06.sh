#!/bin/bash
IMAGE="ICAgICAgICAgX25ubm5fCiAgICAgICAgZEdHR0dNTWIKICAgICAgIEBwfnFwfn5xTWIKICAgICAgIE18QHx8QCkgTXwKICAgICAgIEAsLS0tLS5KTXwKICAgICAgSlNeXF9fLyAgcUtMCiAgICAgZFpQICAgICAgICBxS1JiCiAgICBkWlAgICAgICAgICAgcUtLYgogICBmWlAgICAgICAgICAgICBTTU1iCiAgIEhaTSAgICAgICAgICAgIE1NTU0KICAgRnFNICAgICAgICAgICAgTU1NTQogX198ICIuICAgICAgICB8XGRTInFNTAogfCAgICBgLiAgICAgICB8IGAnIFxacQpfKSAgICAgIFwuX19fLix8ICAgICAuJwpcX19fXyAgIClNTU1NTVB8ICAgLicKICAgICBgLScgICAgICAgYC0tJyBoam0="

base64 -d <<< $IMAGE #Vytisknutí obrázku, který je enkódován v BASE64

printf '\n"%s" ~ %s, %s \n' "Ten linux mě pěkně matte." "Kevin Daněk" "circa 2020";

exit