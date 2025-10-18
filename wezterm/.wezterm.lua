local wezterm = require("wezterm")

wezterm.on("gui-startup", function(cmd)
	local active = wezterm.gui.screens().active

	local _, _, window = wezterm.mux.spawn_window(cmd or {
		x = active.x,
		y = active.y,
		width = active.width,
		height = active.height,
	})

	window:gui_window():set_position(active.x, active.y)
	window:gui_window():set_inner_size(active.width, active.height)
end)

local config = {
	bidi_enabled = true,
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 11.5,
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
		{
			key = "LeftArrow",
			mods = "OPT",
			action = wezterm.action.SendString("\x1bb"),
		},
		{
			key = "RightArrow",
			mods = "OPT",
			action = wezterm.action.SendString("\x1bf"),
		},
	},
	default_prog = { "/bin/zsh", "-l", "-c", "source ~/.zshrc; tmux new-session -A -s main" },
	window_close_confirmation = "NeverPrompt",
}

return config
