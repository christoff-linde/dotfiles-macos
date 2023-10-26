#!/bin/bash

IP_ADDRESS=$(scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)

if [[ $IP_ADDRESS != "" ]]; then
	ICON=
	LABEL=$IP_ADDRESS
else
	ICON=
	LABEL="Not Connected"
fi

sketchybar --set $NAME background.color=$BLUE icon=$ICON label="$LABEL"
