#!/usr/bin/env sh

NODE_DIR=${NODE_DIR:-$HOME/node}
BIN_DIR=$(go env GOPATH)/bin
USER=$(whoami)


VALIDATOR_ADDRESS='${VALIDATOR_ADDRESS}'

cat > metadata <<EOF
VALIDATOR_ADDRESS=
EOF

cat > bttc.service <<EOF
[Unit]
  Description=bttc
  StartLimitIntervalSec=500
  StartLimitBurst=5

[Service]
  Restart=on-failure
  RestartSec=5s
  WorkingDirectory=$NODE_DIR
  EnvironmentFile=/etc/bttc/metadata
  ExecStartPre=/bin/chmod +x $NODE_DIR/bttc/start.sh
  ExecStart=/bin/bash $NODE_DIR/bttc/start.sh $VALIDATOR_ADDRESS
  Type=simple
  User=$USER
  KillSignal=SIGINT
  TimeoutStopSec=120

[Install]
  WantedBy=multi-user.target
EOF

cat > deliveryd.service <<EOF
[Unit]
  Description=deliveryd
  StartLimitIntervalSec=500
  StartLimitBurst=5

[Service]
  Restart=on-failure
  RestartSec=5s
  WorkingDirectory=$NODE_DIR
  ExecStart=$BIN_DIR/deliveryd start
  Type=simple
  User=$USER

[Install]
  WantedBy=multi-user.target
EOF

cat > deliveryd-rest-server.service <<EOF
[Unit]
  Description=deliveryd-rest-server
  StartLimitIntervalSec=500
  StartLimitBurst=5

[Service]
  Restart=on-failure
  RestartSec=5s
  WorkingDirectory=$NODE_DIR
  ExecStart=$BIN_DIR/deliveryd rest-server
  Type=simple
  User=$USER

[Install]
  WantedBy=multi-user.target
EOF

cat > deliveryd-bridge.service <<EOF
[Unit]
  Description=deliveryd-bridge

[Service]
  WorkingDirectory=$NODE_DIR
  ExecStart=$BIN_DIR/bridge start --all
  Type=simple
  User=$USER

[Install]
  WantedBy=multi-user.target
EOF
