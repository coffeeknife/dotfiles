#!/bin/bash

# usage: ./wireguard.sh [interface] <toggle>

if [[ $2 = "toggle" ]];
then
    if [[ $(nmcli conn show $1 | grep GENERAL.STATE | grep activated) ]]; then
        nmcli conn down $1
    else
        nmcli conn up $1
    fi
else
    # show info
    if [[ $(nmcli conn show $1 | grep GENERAL.STATE | grep activated) ]]; then
        echo "󰒘"
        ip_addr=$(nmcli conn show $1 | grep 'ipv4.addresses' | grep -Eo '([0-9]{1,3}.){4}[0-9]+')
        echo "$1: $ip_addr"
        echo "active"
    else
        echo "󰦞"
        echo "$1: inactive"
        echo "inactive"
    fi
fi