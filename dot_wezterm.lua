local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config = {
  default_prog = { 'zellij', '-l', 'welcome' },
	-- default_cursor_style = "SteadyBar",
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",
	adjust_window_size_when_changing_font_size = false,
	window_decorations = "RESIZE",
	check_for_updates = false,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = false,
	-- font_size = 12.5,
  -- font = wezterm.font("JetBrains Mono"),
	enable_tab_bar = true,
	window_padding = {
		left = 3,
		right = 3,
		top = 0,
		bottom = 0,
	},
	-- For example, changing the color scheme:
	-- color_scheme = "One Dark (Gogh)",
	-- color_scheme = 'Catppuccin Macchiato',
	-- color_scheme = "Catppuccin-Mocha",
	color_scheme = "Catppuccin Mocha (Gogh)",

	-- scrollback settings
	scrollback_lines = 3500,
	enable_scroll_bar = false,

	inactive_pane_hsb = {
		saturation = 0.9,
		brightness = 0.8,
	},
	ssh_domains = {
		{
			-- This name identifies the domain
			name = "omv",
			-- The hostname or address to connect to. Will be used to match settings
			-- from your ssh config file
			remote_address = "100.106.96.131",
			-- The username to use on the remote host
			username = "spartazhc",
		},
	},
	-- from: https://akos.ma/blog/adopting-wezterm/
	hyperlink_rules = {
		-- Matches: a URL in parens: (URL)
		{
			regex = "\\((\\w+://\\S+)\\)",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in brackets: [URL]
		{
			regex = "\\[(\\w+://\\S+)\\]",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in curly braces: {URL}
		{
			regex = "\\{(\\w+://\\S+)\\}",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in angle brackets: <URL>
		{
			regex = "<(\\w+://\\S+)>",
			format = "$1",
			highlight = 1,
		},
		-- Then handle URLs not wrapped in brackets
		{
			-- Before
			--regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
			--format = '$0',
			-- After
			regex = "[^(]\\b(\\w+://\\S+[)/a-zA-Z0-9-]+)",
			format = "$1",
			highlight = 1,
		},
		-- implicit mailto link
		{
			regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
			format = "mailto:$0",
		},
	},
}
return config
