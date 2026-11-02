-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 2
local omarchy_monitor_scale = "auto"

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))

-- Configure a specific monitor.
-- (regras específicas precisam vir antes da regra genérica abaixo)
-- HDMI-A-1 (LG) à esquerda, DP-2 (Samsung) à direita.
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "0x0", scale = omarchy_monitor_scale })
hl.monitor({ output = "DP-2", mode = "preferred", position = "1920x0", scale = omarchy_monitor_scale })

hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

-- Portrait/rotated secondary monitor (transform: 1 = 90°, 3 = 270°).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })
