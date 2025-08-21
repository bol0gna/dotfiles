-- https://wezterm.org/config/files.html
local wt = require("wezterm")
local config = wt.config_builder()

local function is_dark()
    if wt.gui then
        return wt.gui.get_appearance():find("Dark")
    end
    return true
end

config.color_scheme = "Gruvbox Material (Gogh)"
config.font = wt.font({
    family = "JetBrains Mono",
    -- https://github.com/JetBrains/JetBrainsMono#opentype-features
    harfbuzz_features = { "ss19", "cv06", "cv07", "cv11", "cv99" },
})
config.font_size = 12

config.use_fancy_tab_bar = true
config.window_decorations = 'RESIZE | INTEGRATED_BUTTONS'
config.window_frame = {
--     font = wt.font({ family = 'Comic Sans MS', weight = 'Bold' }),
    font_size = 11
}
config.window_padding = {
    left = '1cell',
    right = '1cell',
    top = '0.25cell',
    bottom = 0
}
config.enable_scroll_bar = true

local act = wt.action
config.keys = {
    { key = 'p', mods = 'CMD|SHIFT', action = act.ActivateCommandPalette },
    { key = 'l', mods = 'CMD|SHIFT', action = act.ShowDebugOverlay },
    { key = 'F11', action = act.ToggleFullScreen },
    -- { key = 'LeftArrow', mods = 'CMD', action = act.SendString('\x1bb') },
    -- { key = 'RightArrow', mods = 'CMD', action = act.SendString('\x1bf') },
    { key = 'LeftArrow', mods = 'CMD', action = act.SendKey({key='Home'}) },
    { key = 'RightArrow', mods = 'CMD', action = act.SendKey({key='End'}) },
}

return config

-- https://alexplescan.com/posts/2024/08/10/wezterm/
-- https://medium.com/@vladkens/from-iterm-to-wezterm-24db2ccb8dc1
--  https://gist.github.com/vladkens/f2ae7c374c1752c4b1581c5e7dffa900
-- https://github.com/kaddkaka/dotfiles/blob/main/dot_config/wezterm/wezterm.lua

