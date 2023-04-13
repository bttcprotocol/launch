#!/usr/bin/env sh

set -x #echo on

DELIVERY_HOME_DIR=~/.deliveryd

deliveryd --chain donau --home $DELIVERY_HOME_DIR start