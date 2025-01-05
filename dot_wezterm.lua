-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "One Dark (Gogh)"
-- config.color_scheme = 'Catppuccin Macchiato'
-- config.color_scheme = "Catppuccin-Mocha"
config.color_scheme = 'Catppuccin Mocha (Gogh)'

-- scrollback settings
config.scrollback_lines = 3500
config.enable_scroll_bar = false

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

config.window_padding = {
	left = 1,
	right = 2,
	top = 0,
	bottom = 0,
}

config.ssh_domains = {
	{
		-- This name identifies the domain
		name = "omv",
		-- The hostname or address to connect to. Will be used to match settings
		-- from your ssh config file
		remote_address = "100.106.96.131",
		-- The username to use on the remote host
		username = "spartazhc",
	},
}

-- and finally, return the configuration to wezterm
return config
