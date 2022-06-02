#! /usr/bin/env bash

clear

# while [[ 1 ]]; do
#   tput cup 1 0

#   x=7
#   y=745
#   z=1260588

#   printf P1: %d P3: %d P7: %dn   
#   sleep 1
# done

while :; do
  echo -ne " hello world"
  echo -ne "$(tput cub 6)"
  sleep 1
  echo -ne "WORLD"
done