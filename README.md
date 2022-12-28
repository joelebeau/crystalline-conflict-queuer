# Crystalline Conflict Queuer (Final Fantasy XIV)

This utility is intended to help groups queue for Crystalline Conflict without
necessarily having to coordinate a party. Configure this to run on a schedule of your choosing,
and have people queue up when the script tells them to! Then you can ensure you'll be able to play
with your friends more often, which always makes CC more fun.

## Configuration Options
Configuration is managed through environment variables. The options that can be controlled are as follows:

  1. LOOP_WAIT_PERIOD_SECONDS (default: 360) - This is the interval from the end of a countdown until the
       start of the next countdown.
  2. INITIAL_COUNTDOWN_DELAY_SECONDS (default: 5) - Specifies the delay period before the script starts the
       initial countdown. This is to give the person setting up the script enough time to get back in game.
