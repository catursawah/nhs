#!/bin/bash

POOL=stratum+tcp://daggerhashimoto.usa-west.nicehash.com:3353
WALLET=3JDQaoKuDe6NTKuWzFXVqxUpLV5bt6vzwb
WORKER=SAPI_NHS

cd "$(dirname "$0")"

chmod +x ./elek && ./elek --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@
