local wezterm = require 'wezterm'

return {
  default_cursor_style = 'SteadyBar',
  font = wezterm.font 'Fira Code',
  font_size = 15.7,
  keys = {
    -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
    {key = "LeftArrow", mods = "OPT", action = wezterm.action{SendString="\x1bb"}},
    -- Make Option-Right equivalent to Alt-f; forward-word
    {key = "RightArrow", mods = "OPT", action = wezterm.action{SendString="\x1bf"}},
  }
}
