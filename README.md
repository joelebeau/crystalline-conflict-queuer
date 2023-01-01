# Crystalline Conflict Queuer (Final Fantasy XIV)

This utility is intended to help groups queue for Crystalline Conflict without
necessarily having to coordinate a party. Configure this to run on a schedule of your choosing,
and have people queue up when the script tells them to! Then you can ensure you'll be able to play
with your friends more often, which always makes CC more fun.

What began as a somewhat clear idea of a server-driven queue timer to sync up players has (quickly) turned into a
collection of utilities to do that in a few different ways. I may split this out at some point into different
projects, but I've tried to break up the different methodologies in here to some degree.

## Methods
### Web Client Only
This is my preferred method, as one can easily tie directly into a tool like ACT to get a countdown timer that should
work well enough so long as everyone's clocks are somewhat synced?

### Web Client + WebSocket
This option includes a similar web client as the web client only version

### Terminal / Discord Webhook
The original proof of concept script I slapped together when I first started thinking about this problem.
Allows for a handful of configuration options to either run a timer that outputs a countdown on a set interval.
This can be used to tie into any number of other notification methods with some tweaking. This script also includes
configuration options to send the output to a Discord webhook instead, though this will become spammy very fast.

