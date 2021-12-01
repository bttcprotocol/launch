#!/usr/bin/env sh

NODE_DIR=$HOME/node
DELIVERY_HOME=$HOME/.deliveryd

# init delivery node
deliveryd init

# copy node directories to home directories
cp -rf $NODE_DIR/delivery/config/genesis.json $DELIVERY_HOME/config/