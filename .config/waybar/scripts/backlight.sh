#!/usr/bin/env bash

DEVICE="/sys/class/backlight/nvidia_wmi_ec_backlight"

brightness=$(<"$DEVICE/brightness")
max_brightness=$(<"$DEVICE/max_brightness")

percent=$(( (brightness * 100 + max_brightness / 2) / max_brightness ))

printf '{"text":"%d%%","percentage":%d,"tooltip":"Requested brightness: %d / %d"}\n' \
    "$percent" \
    "$percent" \
    "$brightness" \
    "$max_brightness"
