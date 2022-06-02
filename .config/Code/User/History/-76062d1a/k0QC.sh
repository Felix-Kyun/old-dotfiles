#! /usr/bin/env bash

depends=( cat grep sed cut figlet lolcat )
for DEP in "${depends[@]}"; do
    if [[ ! $(command -v $DEP) ]]; then
        echo dependecies not fully installed
        exit 1
    fi
done

cat /etc/os-release | grep NAME | sed '/PRETTY/d' | cut -d= -f2 | sed 's/"//g' | figlet -tf slant -c | lolcat
BOLD=$(tput bold)
BOLD_RESET=$(tput sgr0)
printf "%*s\n" $(((${#title}+$(tput cols))/2)) "${BOLD}$(echo ${USER}@$(hostname))${BOLD_RESET}"