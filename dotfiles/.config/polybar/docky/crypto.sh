#!/bin/bash

API="https://api.kraken.com/0/public/Ticker"

quote=$(curl -sf $API?pair=BTCUSD | jq -r ".result.XXBTZUSD.c[0]")
quote=$(LANG=C printf "%.2f" "$quote")

echo "BTC $quote$"