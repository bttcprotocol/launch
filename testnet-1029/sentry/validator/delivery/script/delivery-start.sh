#!/usr/bin/env sh

set -x #echo on

NNODE_DIR=/data/bttc/node
DELIVERY_HOME_DIR=$NODE_DIR/deliveryd

deliveryd --home $DELIVERY_HOME_DIR start