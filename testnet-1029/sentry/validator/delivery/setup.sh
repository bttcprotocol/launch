#!/usr/bin/env sh

NODE_DIR=~/node
DELIVERY_HOME=~/.deliveryd

# init delivery node
deliveryd init --chain-id delivery-199

# create logs directory
mkdir -p $NODE_DIR/delivery/logs

# copy node directories to home directories
cp -rf $NODE_DIR/delivery/config/genesis.json $DELIVERY_HOME/config/