hl.curve("easeOutQuint", {
	type = "bezier",
	points = { { 0.23, 1.0 }, { 0.32, 1.0 } },
})
hl.curve("easeInOutCubic", {
	type = "bezier",
	points = { { 0.65, 0.05 }, { 0.36, 1.0 } },
})
hl.curve("linear", {
	type = "bezier",
	points = { { 0.0, 0.0 }, { 1.0, 1.0 } },
})
hl.curve("almostLinear", {
	type = "bezier",
	points = { { 0.5, 0.5 }, { 0.75, 1.0 } },
})
hl.curve("quick", {
	type = "bezier",
	points = { { 0.15, 0.0 }, { 0.1, 1.0 } },
})

hl.animation({
	leaf = "global",
	enabled = true,
	speed = 1.25,
	curve = "default",
	bezier = "easeInOutCubic",
})
hl.animation({
	leaf = "border",
	enabled = true,
	speed = 1.3475,
	curve = "easeOutQuint",
	bezier = "easeOutQuint",
})
hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 1.1975,
	curve = "easeOutQuint",
	bezier = "easeOutQuint",
})
hl.animation({
	leaf = "windowsIn",
	enabled = true,
	speed = 1.025,
	curve = "easeOutQuint",
	style = "popin 87%",
	bezier = "easeOutQuint",
})
hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 0.3725,
	curve = "linear",
	style = "popin 87%",
	bezier = "linear",
})
hl.animation({
	leaf = "fadeIn",
	enabled = true,
	speed = 0.4325,
	curve = "almostLinear",
	bezier = "almostLinear",
})
hl.animation({
	leaf = "fadeOut",
	enabled = true,
	speed = 0.365,
	curve = "almostLinear",
	bezier = "almostLinear",
})
hl.animation({
	leaf = "fade",
	enabled = true,
	speed = 0.7575,
	curve = "quick",
	bezier = "quick",
})
hl.animation({
	leaf = "layers",
	enabled = true,
	speed = 0.9525,
	curve = "easeOutQuint",
	bezier = "easeOutQuint",
})
hl.animation({
	leaf = "layersIn",
	enabled = true,
	speed = 1.0,
	curve = "easeOutQuint",
	bezier = "easeOutQuint",
	style = "fade",
})
hl.animation({
	leaf = "layersOut",
	enabled = true,
	speed = 0.375,
	curve = "linear",
	bezier = "linear",
	style = "fade",
})
hl.animation({
	leaf = "fadeLayersIn",
	enabled = true,
	speed = 0.4475,
	curve = "almostLinear",
	bezier = "almostLinear",
})
hl.animation({
	leaf = "fadeLayersOut",
	enabled = true,
	speed = 0.3475,
	curve = "almostLinear",
	bezier = "almostLinear",
})
hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 0.8,
	bezier = "easeInOutCubic",
	style = "slide",
})
hl.animation({
	leaf = "zoomFactor",
	enabled = true,
	speed = 1.75,
	curve = "quick",
	bezier = "quick",
})
