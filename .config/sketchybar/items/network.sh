#!/bin/bash

network_up=(
	icon=⇡
	icon.font="$FONT:Black:12.0"
	icon.color=$BLUE
	label.color=$BLUE
	background.border_color=$RED
	background.border_width=2
	background.height=40
	background.corner_radius=12
	padding_left=2
	padding_right=2
	# width=72
	update_freq=2
	script="$PLUGIN_DIR/network.sh"
)

network_down=(
	icon=⇣
	icon.font="$FONT:Black:12.0"
	icon.color=$MAGENTA
	label.color=$MAGENTA
	padding_left=8
	padding_right=2
	background.border_width=0
	background.height=24
	# width=72
	update_freq=2
	script="$PLUGIN_DIR/network.sh"
)

network_status_bracket=(
	background.color=$BACKGROUND_1
	background.border_color=$BACKGROUND_2
	background.border_width=2
)

sketchybar --add item network.up right \
	--set network.up "${network_up[@]}"

sketchybar --add item network.down right \
	--set network.down "${network_down[@]}"

sketchybar --add bracket network_status network.up network.down ip_address \
	--set network_status "${network_status_bracket[@]}"
