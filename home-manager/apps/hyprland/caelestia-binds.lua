-- ============================================
-- CAELESTIA-SPECIFIC BINDS
-- ============================================

local vars = require("variables")

local mainMod = vars.mainMod

-- launcher
hl.bind(mainMod .. " + SPACE", hl.dsp.global("caelestia:launcher"))

-- Session / Lock
hl.bind("CTRL + ALT + DELETE", hl.dsp.global("caelestia:session"))
hl.bind(mainMod .. " + L", hl.dsp.global("caelestia:lock"))

-- Sidebar / Panels
hl.bind(mainMod .. " + N", hl.dsp.global("caelestia:sidebar"))
hl.bind(mainMod .. " + K", hl.dsp.global("caelestia:showall"))
