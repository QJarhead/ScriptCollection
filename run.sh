#!/bin/bash
source config.conf
#./pre_installations/$pre_installation.sh 
for i in "${pre_installation[@]}"
do
    ./pre_installations/$i.sh
done
