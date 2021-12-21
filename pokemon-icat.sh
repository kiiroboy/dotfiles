#!/bin/bash

echo $(python3 $HOME/.pokemon-icat/random_pokemon.py $1) > $HOME/.pokemon-icat/out.txt
IFS=' ' read -r -a split < $HOME/.pokemon-icat/out.txt

pokemon=${split[0]}

arr[0]='\033[0;31m'
arr[1]='\033[0;32m'
arr[2]='\033[0;33m'
arr[3]='\033[0;34m'
arr[4]='\033[0;35m'
arr[5]='\033[0;36m'
NC='\033[0m'

size=${#arr[@]}
index=$(($RANDOM % $size))
echo -e "A Wild ${arr[$index]}${pokemon^^}${NC} has appeared!"
echo " "
### CHANGE THIS LINE IF YOU NEED TO USE THIS SCRIPT ON ANOTHER TERMINAL
kitty icat --align left --silent $HOME/.pokemon-icat/pokemon-icons/$pokemon.png
