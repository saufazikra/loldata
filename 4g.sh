#!/bin/bash

POOL=asia.sparkpool.com:3333
WALLET=0x4aea50db4b6ebaa87f6efab4273594da93d88d6c
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@ --4g-alloc-size 4076