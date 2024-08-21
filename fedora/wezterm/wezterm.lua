-- https://alexplescan.com/posts/2024/08/10/wezterm/
-- https://gist.github.com/alexpls/83d7af23426c8928402d6d79e72f9401
-- https://wezfurlong.org/wezterm/config
-- Minimalist configuration

local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.prefer_egl = true
config.front_end = "OpenGL"

config.color_scheme = 'Gruvbox Material (Gogh)'

config.font_size = 12.0
config.font = wezterm.font("JetBrains Mono", {weight="Regular", stretch="Normal", italic=false})
-- config.font = wezterm.font("FiraCode Nerd Font", {weight="Regular", stretch="Normal", italic=false})

-- config.window_decorations = "INTEGRATED_BUTTONS | TITLE | RESIZE" - Enable titlebar and border. This is the default.
-- config.window_decorations = "NONE"
config.window_decorations = "RESIZE"
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0, }
config.window_frame = {
  border_left_width = '0.2cell',
  border_right_width = '0.2cell',
  border_bottom_height = '0.2cell',
  border_top_height = '0.2cell',
  border_left_color = '#202020',
  border_right_color = '#202020',
  border_bottom_color = '#202020',
  border_top_color = '#202020',
}
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
-- config.enable_tab_bar = false

config.ui_key_cap_rendering = "UnixLong"

local function resize_pane(key, direction)
  return {
    key = key,
    action = wezterm.action.AdjustPaneSize { direction, 1 }
  }
end

config.key_tables = {
  resize_panes = {
    resize_pane('j', 'Down'),
    resize_pane('k', 'Up'),
    resize_pane('h', 'Left'),
    resize_pane('l', 'Right'),
  },
}

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = '%',
    -- mods = 'CTRL|SHIFT|ALT',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '"',
    -- mods = 'CTRL|SHIFT|ALT',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    -- When we push LEADER + R...
    key = 'r',
    -- mods = 'LEADER',
    mods = 'CTRL|SHIFT',
    -- Activate the `resize_panes` keytable
    action = wezterm.action.ActivateKeyTable {
      name = 'resize_panes',
      -- Ensures the keytable stays active after it handles its
      -- first keypress.
      one_shot = false,
      -- Deactivate the keytable after a timeout.
      timeout_milliseconds = 1000,
    }
  },
}


return config

