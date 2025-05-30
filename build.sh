#!/bin/bash

set -eu

rm -rf ./.west ./build

west init -l config
west update
west zephyr-export

west -v build -s zmk/app -b nice_nano_v2 -S studio-rpc-usb-uart -S cdc-acm-console -- -DSHIELD=handwired_68 -DZMK_CONFIG=/workspace/zmk-config/config

