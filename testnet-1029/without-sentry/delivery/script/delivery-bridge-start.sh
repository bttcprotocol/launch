#!/usr/bin/env sh

set -x #echo on

NODE_DIR=/data/bttc/node
DELIVERY_HOME_DIR=$NODE_DIR/deliveryd

bridge --home $DELIVERY_HOME_DIR start --all --node http://0.0.0.0:26657