#!/usr/bin/env bash

# terminate already running bars
polybar-msg cmd quit

# launch bar
echo "---" | tee -a /tmp/polybar1.log
polybar bar 2>&1 | tee -a /tmp/polybar1.log & disown

echo "bars launched."
