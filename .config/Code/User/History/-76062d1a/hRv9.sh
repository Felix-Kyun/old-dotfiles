#! /usr/bin/env bash

depends=( cat grep sed cut figlet lolcat )
for DEP in "${depends[@]}"; do
    if [[ ! $(command -v $DEP) ]]; then
        echo dependecies not fully installed
        exit 1
    fi
done

center() {
  LEN=$(( ( $( tput cols ) - ${#2} - ${#1} ) /2 ))
  for (( x=0; x<$LEN; x++ )); do
    echo -n " "
  done
  echo -e "$(tput bold )$1$( tput sgr0 )$2"
}

center " Host: " "$(cat /sys/devices/virtual/dmi/id/product_name)"
center " Kernel: " "$(uname -r)"
center "" ""
center "" ""
center "" ""
