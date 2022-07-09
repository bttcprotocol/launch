#!/usr/bin/env sh

NODE_DIR=~/node
DELIVERY_HOME=~/.deliveryd

# init delivery node
deliveryd init --home $DELIVERY_HOME_DIR --chain-id delivery-199

# copy node directories to home directories
cp -rf $NODE_DIR/delivery/config/genesis.json $DELIVERY_HOME/config/