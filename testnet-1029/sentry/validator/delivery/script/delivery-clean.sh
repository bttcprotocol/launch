#!/usr/bin/env sh

set -x #echo on
NODE_DIR=/data/bttc/node
DELIVERY_HOME_DIR=$NODE_DIR/deliveryd

deliveryd --home $DELIVERY_HOME_DIR unsafe-reset-all
bridge --home $DELIVERY_HOME_DIR purge-queue
rm -rf $DELIVERY_HOME_DIR/bridge