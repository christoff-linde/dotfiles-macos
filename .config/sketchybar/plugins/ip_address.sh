#!/bin/bash

IP_ADDRESS=$(scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)

if [[ $IP_ADDRESS != "" ]]; then
	COLOR=$BLUE
	ICON=
	LABEL=$IP_ADDRESS
else
	COLOR=$WHITE
	ICON=
	LABEL="Not Connected"
fi

sketchybar --set $NAME background.color=$COLOR icon=$ICON label="$LABEL"
