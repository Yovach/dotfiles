local wezterm = require 'wezterm'
local config = {}

-- get current appearence of OS
function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

-- theme following OS
function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'Tokyo Night'
  end

  return 'Tokyo Night Day'
end

config.enable_tab_bar = false
config.font = wezterm.font 'Cascadia Mono NF'
config.font_size = 14
config.color_scheme = scheme_for_appearance(get_appearance())
-- config.default_prog = { 'pwsh' }
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.front_end = 'WebGpu'
config.win32_system_backdrop = 'Mica'
-- config.window_background_opacity = 0
config.window_close_confirmation = 'NeverPrompt'
config.check_for_updates = false

return config
