#! /usr/bin/env bash

depends=( cat grep sed cut figlet lolcat )
for DEP in "${depends[@]}"; do
    if [[ ! $(command -v $DEP) ]]; then
        echo dependecies not fully installed
        exit 1
    fi
done

cat /etc/os-release | grep NAME | sed '/PRETTY/d' | cut -d= -f2 | sed 's/"//g' | figlet -tf slant -c | lolcat
printf "%*b\n" $(((${#title}+$(tput cols))/2)) "\t\t \033[1m $(echo ${USER}@$(hostname))\033[0m"
printf "%*b\n" $(((${#title}+$(tput cols))/2)) "\t\t \033[1m Host:\033[0m $( cat /sys/devices/virtual/dmi/id/product_version )"