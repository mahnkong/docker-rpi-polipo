#!/bin/bash

TOR_SERVER_ADDR=${TOR_SERVER_ADDR:="tor"}

sed -i -e "s|%TOR_SERVER_ADDR%|${TOR_SERVER_ADDR}|g" /etc/polipo/config
polipo
