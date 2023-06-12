#!/bin/bash
any_naixament=${1}

if [[ $# -eq 0 ]]; 
then
    echo "no has posat cap parametre ERROR"
    exit 1
fi
read -p "introduiex el teu nom: " nom
data=$(date)

data_actual=$(date +%Y-%m-%d)


SUMA=$(($(date -d "$data_actual" +%Y) - $any_naixament))

echo "En ${nom} te ${SUMA} anys"