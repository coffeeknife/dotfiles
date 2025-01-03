#!/bin/bash

# if we're on gentoo, it's my pc (so it's the mullvad uplink)
if [ "$(lsb_release -is)" == "Gentoo" ]; then
    echo {} # todo
# otherwise it's a custom wireguard back to my home network
else
    ip addr | grep -q "wg0" && echo {} || echo disconnected # todo
fi