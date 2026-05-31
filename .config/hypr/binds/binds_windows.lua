hl.bind("SUPER + q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + q", hl.dsp.window.kill())
hl.bind("SUPER + semicolon", hl.dsp.window.float())
hl.bind("SUPER + h", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + l", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + k", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + j", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
	hl.bind("SUPER + " .. (i % 10), hl.dsp.focus({ workspace = tostring(i) }))
	hl.bind("SUPER + SHIFT + " .. (i % 10), hl.dsp.window.move({ workspace = i, follow = false }))
end

hl.bind("SUPER + bracketright", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + bracketleft", hl.dsp.focus({ workspace = "e-1" }))

hl.bind("ALT + TAB", hl.dsp.focus({ workspace = "previous" }))

hl.bind("SUPER + right", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + left", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + down", hl.dsp.focus({ workspace = "4" }))
hl.bind("SUPER + up", hl.dsp.focus({ workspace = "7" }))

hl.bind("SUPER + s", hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + s", hl.dsp.window.move({ workspace = "special:magic", follow = false }))

hl.bind("SUPER + CONTROL + p", hl.dsp.window.pin())

hl.bind("SUPER + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + k", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + j", hl.dsp.window.move({ direction = "down" }))

hl.bind("SUPER + f", hl.dsp.window.fullscreen())

hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind("SUPER + mouse:272", hl.dsp.window.float({ action = "enable" }), { mouse = true })
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind("SUPER + SHIFT + Return", hl.dsp.group.toggle())
hl.bind("SUPER + m", hl.dsp.window.fullscreen({ mode = "maximized" }))

local resize_value = 50
hl.bind("SUPER + CONTROL + l", hl.dsp.window.resize({ x = resize_value, y = 0, relative = true }), { repeating = true })
hl.bind(
	"SUPER + CONTROL + h",
	hl.dsp.window.resize({ x = -resize_value, y = 0, relative = true }),
	{ repeating = true }
)
hl.bind(
	"SUPER + CONTROL + k",
	hl.dsp.window.resize({ x = 0, y = -resize_value, relative = true }),
	{ repeating = true }
)
hl.bind("SUPER + CONTROL + j", hl.dsp.window.resize({ x = 0, y = resize_value, relative = true }), { repeating = true })
