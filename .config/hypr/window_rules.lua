hl.window_rule({
	match = {
		class = "Minecraft.*",
	},
	float = false,
})

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

local opacity = 0.95

hl.window_rule({
	match = {
		class = "Alacritty|kitty",
	},
	opacity = opacity,
})

hl.window_rule({
	match = {
		class = "^steam_app_\\d+$",
	},
	fullscreen = true,
})

hl.window_rule({
	match = {
		class = "^ueberzug.*$",
	},
	border_size = 0,
	no_anim = true,
	float = true,
	no_focus = true,
	no_shadow = true,
})

-- NOTE: Tray
hl.window_rule({
	match = {
		class = "nz.co.mega.megasync|org.twosheds.iwgtk",
	},
	move = { "cursor_x - window_w * .5", "cursor_y + 30" },
})

-- NOTE: Float rules

-- windowrule = float, title:negative:^.*Godot Engine$, class:^.*Godot.*$

local float_classes = {
	"org.prismlauncher.PrismLauncher",
	"nz.co.mega.megasync",
	"scrcpy",
	"org.twosheds.iwgtk",
	"blueman-manager",
}
local float_titles = {
	"^(Library)(.*)$",
	"^(Save As)(.*)$",
	"^(Open Folder)(.*)$",
	"^(Choose wallpaper)(.*)$",
	"^(Select a File)(.*)$",
	"^(Open File)(.*)$",
	"float",
	"Please wait... — Prism Launcher.*",
}

hl.window_rule({
	match = {
		class = "^(" .. table.concat(float_classes, "|") .. ")$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(" .. table.concat(float_titles, "|") .. ")$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "steam",
		title = "Friends List",
	},
	float = true,
})
