-- KEYBINDS

local mainMod = "SUPER"
local terminal = "kitty"

-- ============================================
-- BASE HYPRLAND BINDS
-- ============================================

-- Terminal
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))

-- Window actions
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- Exit
hl.bind(mainMod .. " + M", hl.dsp.exit())

-- Workspace navigation (1-10)
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- ============================================
-- CAELESTIA-SPECIFIC BINDS
-- ============================================

hl.bind(mainMod .. " + SPACE", hl.dsp.global("caelestia:launcher"))
