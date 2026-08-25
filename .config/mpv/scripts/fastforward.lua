local mp = require("mp")

local osd_timer = nil

local function show_speed()
	mp.osd_message("▶▶ x2.0", 1)
end

local function fastforward_handle(e)
	if e.event == "down" then
		mp.set_property_number("speed", 2)
		show_speed()

		if not osd_timer then
			osd_timer = mp.add_periodic_timer(0.5, show_speed)
		end
	elseif e.event == "up" then
		mp.set_property_number("speed", 1)

		if osd_timer then
			osd_timer:kill()
			osd_timer = nil
		end
	end
end

mp.add_forced_key_binding(
	"MBTN_LEFT",
	"fastforward",
	fastforward_handle,
	{ complex = true }
)
