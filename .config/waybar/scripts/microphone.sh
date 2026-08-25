#!/usr/bin/env bash

src=$(pactl get-default-source)

mute_state=$(pactl get-source-mute "$src" | cut -d' ' -f2)

printf '{"alt":"%s|%s"}\n' "$src" "$mute_state"
