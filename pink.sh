#!/bin/bash

POOL=stratum+tcp://daggerhashimoto.usa-west.nicehash.com:3353
WALLET=3JDQaoKuDe6NTKuWzFXVqxUpLV5bt6vzwb
WORKER=SAPI_NHS

cd "$(dirname "$0")"

chmod +x ./devx && sudo ./devx -pool $POOL -wal $WALLET.$WORKER -pass x -proto 4 -stales 0  $@
