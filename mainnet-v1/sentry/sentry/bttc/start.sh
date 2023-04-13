#!/usr/bin/env sh

set -x #echo on

BTTC_DIR=${BTTC_DIR:-~/.bttc}
DATA_DIR=$BTTC_DIR/data

bttc --datadir $DATA_DIR \
  --bttc-mainnet \
  --port 30303 \
  --bor.heimdall "http://localhost:1317" \
  --http --http.addr '0.0.0.0' \
  --http.vhosts '*' \
  --http.corsdomain '*' \
  --http.port 8545 \
  --ipcpath $DATA_DIR/bttc.ipc \
  --http.api 'eth,net,web3,txpool,bor' \
  --syncmode 'full' \
  --networkid 199 \
  --rpc.allow-unprotected-txs --rpc.txfeecap 0 \
  --miner.gaslimit '20000000' \
  --miner.gasprice '300000000000000' \
  --miner.gastarget '20000000' \
  --gpo.maxprice '500000000000000' \
  --txpool.nolocals \
  --txpool.accountslots 16 \
  --txpool.globalslots 131072 \
  --txpool.accountqueue 64 \
  --txpool.globalqueue 131072 \
  --txpool.lifetime '1h30m0s' \
  --maxpeers 200 \
  --metrics \
  --pprof --pprof.port 7071 --pprof.addr '0.0.0.0'

