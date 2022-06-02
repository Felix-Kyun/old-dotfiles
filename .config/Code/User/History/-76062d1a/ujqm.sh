#! /usr/bin/env bash

# TODO: make install.sh > install dependecies and install toilet font
# TODO: make OS check function

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

cat /etc/os-release | grep NAME | sed '/PRETTY/d' | cut -d= -f2 | sed 's/"//g' | cut -d ' ' -f1 | figlet -tf Sub-Zero -c | lolcat

center " Host: " "$(cat /sys/devices/virtual/dmi/id/product_name)"
center " Kernel: " "$(uname -r)"
center " Memory: " "$(free -h | grep 'Mem:' | tr -s ' ' | awk '{print $3 " / "  $2}')"
center " Uptime: " "$(uptime -p | sed 's/up//')"
# For Now Only Works On Arch Based Systems :P
center " Packages: " "$(pacman -Q | wc -l)"
