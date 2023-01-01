#!/usr/bin/env bash

VERSION="0.0.1"

QUEUE_INTERVAL_PERIOD=360

# Initialize countdown to 15 seconds
countdown=15

while true; do
  echo "{\"v\":\"$VERSION\",\"m\":$countdown}"
  let countdown="$countdown - 1"
  
  if [ $countdown -lt 0 ]; then
    countdown=$QUEUE_INTERVAL_PERIOD
  fi

  sleep 1
done
