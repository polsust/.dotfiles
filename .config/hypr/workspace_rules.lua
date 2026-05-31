hl.window_rule({
	match = {
		class = "^(?i).*(minecraft|steam|godot|artofrally.x64|org.prismlauncher.PrismLauncher).*$",
	},
	workspace = "4 silent",
})

hl.window_rule({
	match = {
		class = "discord",
	},
	workspace = "7 silent",
})

hl.window_rule({
	match = {
		title = "ncspot",
	},
	workspace = "9 silent",
})

hl.window_rule({
	match = {
		class = "Spotify",
	},
	workspace = "9 silent",
})

for i = 1, 10 do
	hl.window_rule({
		match = {
			title = "ws-" .. i,
		},
		workspace = i .. " silent",
	})
end
