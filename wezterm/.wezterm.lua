local wezterm = require 'wezterm'

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font_with_fallback({
    'FiraCode Nerd Font',
    'JetBrains Mono',
    { family = 'Symbols Nerd Font Mono', scale = 0.8 }
})
config.font_size = 16.0

config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.window_background_opacity = 0.925
config.macos_window_background_blur = 25

config.harfbuzz_features = {
    'calt=0',
    'clig=0',
    'liga=0',
    'ss01', -- r
    'zero', -- 0
    'cv14', -- 3
    -- 'onum', -- 0123456789
    -- 'ss05', -- max@mustermann.de
    'ss03', -- &
}

return config
