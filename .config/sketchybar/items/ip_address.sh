#!/bin/bash

ip_address=(
	# icon.highlight=on
	# label.highlight=on
	label.color=$GREEN
	label.highlight_color=$RED
	padding_left=2
	padding_right=8
	background.border_width=0
	background.corner_radius=6
	background.height=24
	background.color=$YELLOW
	update_freq=30
	script="$PLUGIN_DIR/ip_address.sh"
)

sketchybar --add item ip_address right \
	--set ip_address "${ip_address[@]}" \
	--subscribe ip_address wifi_change
