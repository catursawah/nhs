#!/bin/bash

POOL=stratum+tcp://daggerhashimoto.eu.nicehash.com:3353
WALLET=32yAg5MbySmKasUBeTL12BCeiAdFeNvnN1
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -pool $POOL -wal $WALLET.$WORKER -pass x -proto 4 -stales 0  $@
