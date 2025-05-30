#!/bin/bash

set -eu

rm -rf ./.west ./build

west init -l config
west update
west zephyr-export

west -v build -s zmk/app -b nice_nano_v2 -S zmk-usb-logging -- -DSHIELD=handwired_68 -DZMK_CONFIG=/workspace/zmk-config/config
