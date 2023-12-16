local wezterm = require("wezterm")

local config = {
	bidi_enabled = true,
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 12.2,
	font_rules = {
		{
			intensity = "Bold",
			italic = false,
			font = wezterm.font("JetBrains Mono", { weight = "Bold", stretch = "Normal", style = "Normal" }),
		},
		{
			intensity = "Bold",
			italic = true,
			font = wezterm.font("JetBrains Mono", { weight = "Bold", stretch = "Normal", style = "Italic" }),
		},
	},
	hide_tab_bar_if_only_one_tab = true,
	color_scheme = "Catppuccin Mocha",
	window_decorations = "RESIZE",
	use_dead_keys = false,
	scrollback_lines = 5000,
	window_padding = {
		left = 8,
		right = 8,
		top = 8,
		bottom = 8,
	},
	keys = {
		{
			key = "m",
			mods = "CTRL",
			action = wezterm.action.SendString("\x00\x54"),
		},
	},
}

return config
