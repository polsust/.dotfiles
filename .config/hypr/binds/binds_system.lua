Bind("XF86AudioRaiseVolume", "swayosd-client --output-volume raise", nil, { repeating = true })
Bind("XF86AudioLowerVolume", "swayosd-client --output-volume lower", nil, { repeating = true })
Bind("SUPER + ALT + k", "swayosd-client --output-volume raise", nil, { repeating = true })
Bind("SUPER + ALT + j", "swayosd-client --output-volume lower", nil, { repeating = true })
Bind("XF86AudioMute", "swayosd-client --output-volume mute-toggle")
Bind("XF86AudioMicMute", "swayosd-client --input-volume mute-toggle")

Bind("XF86MonBrightnessUp", "swayosd-client --brightness raise", nil, { repeating = true })
Bind("XF86MonBrightnessDown", "swayosd-client --brightness lower", nil, { repeating = true })
Bind("SUPER + ALT + l", "swayosd-client --brightness raise", nil, { repeating = true })
Bind("SUPER + ALT + h", "swayosd-client --brightness lower", nil, { repeating = true })

Bind("XF86AudioPlay", "swayosd-client --playerctl play-pause")
Bind("XF86AudioNext", "swayosd-client --playerctl next")
Bind("XF86AudioPrev", "swayosd-client --playerctl previous")
Bind("SUPER + ALT + m", "swayosd-client --input-volume mute-toggle")

Bind("SUPER + ALT + p", "poweroff")
Bind("SUPER + ALT + r", "reboot")

Bind("SUPER + ALT + semicolon", "hyprlock")
