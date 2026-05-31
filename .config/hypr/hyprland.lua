TERMINAL = "alacritty"
LAUNCH_IN_TERM = TERMINAL .. " -e"
GUI_FILE_MANAGER = "pcmanfm"
WEB_BROWSER = "qutebrowser"

---@param keybind string
---@param cmd string
---@param rules table<string, boolean|string|number>|nil
---@param opts HL.BindOptions|nil
function Bind(keybind, cmd, rules, opts)
	hl.bind(keybind, function()
		hl.exec_cmd(cmd, rules)
	end, opts)
end

require("colorscheme")
require("binds.binds_launchers")
require("binds.binds_system")
require("binds.binds_windows")
require("window_rules")
require("workspace_rules")
require("animations")
require("init")
require("env")

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "1",
})

hl.config({
	general = {
		allow_tearing = false,
		border_size = 1,
		col = {
			active_border = "rgba(33ccffee)",
			inactive_border = "rgba(595959aa)",
		},
		gaps_in = 7,
		gaps_out = 15,
		layout = "dwindle",
		no_focus_fallback = true,
		resize_corner = 3,
		resize_on_border = false,
	},
	decoration = {
		active_opacity = 1.0,
		blur = {
			enabled = true,
			ignore_opacity = true,
			passes = 1,
			size = 8,
			vibrancy = 0.1696,
		},
		inactive_opacity = 1.0,
		rounding = 0,
		rounding_power = 0,
		shadow = {
			color = "rgba(1a1a1aee)",
			enabled = true,
			range = 4,
			render_power = 3,
		},
	},
	input = {
		accel_profile = "flat",
		follow_mouse = 1,
		force_no_accel = true,
		kb_layout = "us",
		kb_model = "",
		kb_options = "compose:ralt,caps:escape",
		kb_rules = "",
		kb_variant = "",
		repeat_delay = 300,
		repeat_rate = 35,
		scroll_button_lock = true,
		sensitivity = 1,
		touchpad = {
			drag_lock = 2,
			natural_scroll = false,
		},
	},
	misc = {
		close_special_on_empty = true,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		focus_on_activate = false,
		force_default_wallpaper = -1,
		middle_click_paste = false,
		on_focus_under_fullscreen = true,
	},
	binds = {
		movefocus_cycles_fullscreen = true,
		movefocus_cycles_groupfirst = true,
	},
	xwayland = {
		force_zero_scaling = false,
	},
	cursor = {
		inactive_timeout = 5,
	},
	dwindle = {
		force_split = 2,
		preserve_split = true,
		smart_split = false,
	},
	master = {
		new_status = "master",
	},
	animations = {
		enabled = true,
	},
	ecosystem = {
		no_donation_nag = true,
		no_update_news = true,
	},
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
