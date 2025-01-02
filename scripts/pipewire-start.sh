#!/bin/bash
dbus-launch --sh-syntax --exit-with-session; pulseaudio --kill; gentoo-pipewire-launcher
