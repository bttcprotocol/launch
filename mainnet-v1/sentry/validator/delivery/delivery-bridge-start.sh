#!/usr/bin/env sh

set -x #echo on

DELIVERY_HOME_DIR=~/.deliveryd

deliveryd bridge --home $DELIVERY_HOME_DIR start --all --node http://0.0.0.0:26657 --log_level=debug