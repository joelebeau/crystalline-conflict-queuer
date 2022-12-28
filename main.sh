#!/usr/bin/env bash

# LOOP_WAIT_PERIOD_SECONDS
# Amount of time to sleep the script until running the next countdown.
# Wait period begins AFTER the countdown ends and the notification is triggered.
#
# Default: 300s (5 minutes)
LOOP_WAIT_PERIOD_SECONDS=${LOOP_WAIT_PERIOD_SECONDS:=300}

# INITIAL_COUNTDOWN_DELAY_SECONDS
# Amunt of time to wait before triggering an initial countdown sequence. Intended to give
# the script runner some time to switch apps before a countdown begins.
#
# Default: 5s
INITIAL_COUNTDOWN_DELAY_SECONDS=${INITIAL_COUNTDOWN_DELAY_SECONDS:=5}

# Main script loop
function main() {
  echo "Waiting $INITIAL_COUNTDOWN_DELAY_SECONDS seconds before starting..."
  sleep $INITIAL_COUNTDOWN_DELAY_SECONDS
  do_countdown

  while true; do
    echo "Waiting $LOOP_WAIT_PERIOD_SECONDS seconds before starting another countdown..."
    sleep $LOOP_WAIT_PERIOD_SECONDS

    do_countdown
  done
}

function do_countdown() {
  case "$NOTIFICATION_METHOD" in
    "bot")  _do_countdown__bot;;
    *)      _do_countdown__echo;;
  esac
}

function _do_countdown__bot() {
  echo "Not yet implemented"
}

function _do_countdown__echo() {
  let timer=5

  until [ $timer -lt 0 ]; do
    local timer_expression

    if [ $timer -gt 0 ]; then
      timer_expression="$timer"
    else
      timer_expression="GO!"
    fi

    echo "Countdown: $timer_expression"
    let timer=$timer-1
    sleep 1
  done
}


main
