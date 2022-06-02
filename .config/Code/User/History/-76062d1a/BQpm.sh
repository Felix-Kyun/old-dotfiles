#! /usr/bin/env bash

depends=( cat grep sed cut figlet lolcat )
for DEP in "${depends[@]}"; do
    if [[ ! $(command -v $DEP) ]]; then
        echo dependecies not fully installed
        exit 1
    fi
done

BOLD=$(tput bold)
RESET=$(tput sgr0)

# center() {
#   len=$(( $(tput cols) - ${#1} ))
#   new=$(( (${len[@]:0:-1} *65) /100 ))
#   for ((x=0;x<$new;x++)); do          
#     echo -ne "\t"             
#   done         
#   echo $1
# } 

center() {
  LEN=$(( $( tput cols ) - ${#2} - 8 ))
  for (( x=0; x<$LEN; x++ )); do
    echo -n " "
  done
  echo -e "$(tput bold )$1$( tput sgr0 )\t$2"
}

cat /etc/os-release | grep NAME | sed '/PRETTY/d' | cut -d= -f2 | sed 's/"//g' | cut -d ' ' -f1 | figlet -tf Sub-Zero -c | lolcat
echo -e "${BOLD}$(center " ${USER}@$(hostname)" )$RESET"
echo -e "${BOLD}$(center " Host: $(cat /sys/devices/virtual/dmi/id/product_name | cut -d ' ' )" )$RESET" 
echo -e "${BOLD}$(center "" )$RESET"
echo -e "${BOLD}$(center "" )$RESET"
echo -e "${BOLD}$(center "" )$RESET"
echo -e "${BOLD}$(center "" )$RESET"

host=$(cat /sys/devices/virtual/dmi/id/product_name )
printf "%*b\n" $(( (($(tput cols) - ${#host}) /2) *2)) "\033[1m Host:\033[0m$host"
kernel=$(uname -r)
printf "%*b\n" $((((${#kernel}*3)+$(tput cols))/2)) "\033[1m Kernel:\033[0m$kernel"
