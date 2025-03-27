#!/bin/bash

hyprlock --immediate &
# swaylock &
sleep 1
niri msg action power-off-monitors

brightnessctl --device=*kbd* set 0
