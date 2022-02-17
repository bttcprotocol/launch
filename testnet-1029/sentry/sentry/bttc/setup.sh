#!/usr/bin/env sh

# set -x #echo on
NODE_DIR=~/node
BTTC_DIR=${BTTC_DIR:-~/.bttc}
DATA_DIR=$BTTC_DIR/data
NODE_KEY=~/nodekey

# create bttc and keystore directory
mkdir -p $BTTC_DIR $BTTC_DIR/keystore $NODE_DIR/bttc/logs

# init bttc
bttc --datadir $DATA_DIR init ./genesis.json

# copy peers file
cp ./static-nodes.json $DATA_DIR/bor/static-nodes.json

# if node key not present, create nodekey
if [ ! -f $NODE_KEY ]; then
  bootnode -genkey $NODE_KEY
fi

# copy node key file
cp $NODE_KEY $BTTC_DIR/

echo "Setup done!"
