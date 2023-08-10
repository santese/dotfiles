#!/usr/bin/env bash
# set Brave as default
open -a "Brave Browser" --args --make-default-browser
pkill -nx "Brave Browser" &> /dev/null
