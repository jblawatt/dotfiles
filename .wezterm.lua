-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Adventure"
-- config.color_scheme = "carboxfox"
-- config.color_scheme = "Chalk (base16)"
-- config.color_scheme = "cyberpunk"
-- config.color_scheme = "Gruber (base16)"

-- config.color_scheme = "DanQing Light (base16)"
-- config.color_scheme = "Solarized (light) (terminal.sexy)"
config.color_scheme = "Panda (Gogh)"
-- config.color_scheme = "neobones_light"
-- config.color_scheme = "Solarized (light) (terminal.sexy)"

config.hide_tab_bar_if_only_one_tab = true

-- config.font = wezterm.font("Courier", { weight = "Bold" })
-- config.font = wezterm.font("CaskaydiaMono Nerd Font Mono", { weight = "Bold" })
-- config.font = wezterm.font("Hasklug Nerd Font Mono", { weight = "Bold" })

-- config.font = wezterm.font_with_fallback({
-- 	{ family = "Red Hat Mono", weight = "Regular" },
-- 	"Hasklug Nerd Font",
-- })

-- config.font = wezterm.font("IosevkaTerm Nerd Font Mono")
config.font = wezterm.font("Lekton Nerd Font Mono")
-- config.font = wezterm.font("RecMono Nerd Font Mono")

config.font_size = 16.0

config.send_composed_key_when_left_alt_is_pressed = true

config.audible_bell = "Disabled"

-- config.background = {
-- 	{
-- 		source = {
-- 			File = "/Users/jblawatt/Downloads/IMG_6125.JPG",
-- 		},
-- 		-- opacity = 0.9,
-- 	},
-- }

-- config.window_background_image = "/Users/jblawatt/Documents/wezterm-background/background.jpg"
config.background = {
	{
		source = {
			File = "/Users/jblawatt/Documents/wezterm-background/background.jpg",
		},
		hsb = {
			brightness = 0.01,
		},
	},
}

-- 	hue = 1.0,
-- 	saturation = 1.0,
-- }
-- and finally, return the configuration to wezterm

return config
