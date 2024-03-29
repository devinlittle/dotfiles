local wezterm = require("wezterm");
local config = {}

config.color_scheme = 'Catppuccin Mocha'
--config.color_scheme = "Dracula (Official)"

--config.default_cwd = "/Volumes/1tb external storage/Documents/code"
config.audible_bell = "Disabled"
config.font = wezterm.font('FiraCode Nerd Font', { weight = 'Regular' })
config.font_size = 12 

config.window_padding = {
  left = '1cell',
  right = '1cell',
  top = '0.5cell',
  bottom = '0.5cell',
}

--config.font_antialias = "Greyscale"
config.enable_wayland = true
config.hide_tab_bar_if_only_one_tab = true
config.term = "xterm-256color"

config.ssh_domains = {
  {
    -- This name identifies the domain
    name = 'my.server',
    -- The hostname or address to connect to. Will be used to match settings
    -- from your ssh config file
    remote_address = '10.0.0.139',
    -- The username to use on the remote host
    username = 'devin',
    remote_wezterm_path = "/Applications/WezTerm.app/Contents/MacOS/wezterm"
  },
}

config.unix_domains = {
  {
    name = 'unix',
  },
}

config.keys = {
  {
    key = 'A',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AttachDomain 'unix',
  },
  {
   key = "D",
   mods = "CTRL|SHIFT",
   action = wezterm.action.DetachDomain { DomainName = "unix" },
  },
}

config.default_gui_startup_args = { 'connect', 'unix' }

return config
