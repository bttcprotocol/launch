#!/usr/bin/env sh

set -x #echo on

DELIVERY_HOME_DIR=~/.deliveryd

deliveryd --home $DELIVERY_HOME_DIR --laddr tcp://0.0.0.0:1317 --node tcp://localhost:26657 rest-server