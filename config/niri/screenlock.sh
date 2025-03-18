#!/bin/bash

hyprlock --immediate &
sleep 1
niri msg action power-off-monitors
