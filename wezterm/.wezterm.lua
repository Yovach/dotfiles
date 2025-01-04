local wezterm = require 'wezterm'
local config = {}

config.enable_tab_bar = false
config.font = wezterm.font 'Cascadia Mono NF'
config.font_size = 14
config.color_scheme = 'Tokyo Night'
config.default_prog = { 'pwsh' }
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.front_end = 'WebGpu'
config.win32_system_backdrop = 'Mica'
config.window_background_opacity = 0
config.window_close_confirmation = 'NeverPrompt'
config.check_for_updates = false

return config
