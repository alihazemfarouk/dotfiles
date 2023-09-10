local wezterm = require("wezterm")

local config = {
	bidi_enabled = true,
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 12,
	hide_tab_bar_if_only_one_tab = true,
	color_scheme = "Gruvbox Material (Gogh)",
	window_decorations = "RESIZE",
	use_dead_keys = false,
	scrollback_lines = 5000,
	keys = {
		{
			key = "m",
			mods = "CTRL",
			action = wezterm.action.SendString("\x00\x54"),
		},
	},
}

return config
