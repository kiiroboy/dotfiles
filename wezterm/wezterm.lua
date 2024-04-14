local wezterm = require 'wezterm'
local mux = wezterm.mux
local catppuccin = require 'customCat'
local config = {
    --font = wezterm.font('Comic Code', {stretch='Normal'}),
    freetype_load_flags = "NO_HINTING",
    initial_rows = 50,
    initial_cols = 150,
    --font = wezterm.font_with_fallback { {family='Monaspace Neon Var'}, 'MesloLGS NF'},
    font = wezterm.font_with_fallback { {family='Monaspace Neon', weight="ExtraLight"}},
    font_size = 16,
    window_decorations = "RESIZE",
	inactive_pane_hsb = {
		saturation = 1.0,
		brightness = 0.8,
	},

    -- tab bars
    use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	tab_max_width = 32,
	hide_tab_bar_if_only_one_tab = true,
    

    --others
    audible_bell = 'Disabled',
    cursor_blink_rate = 0,
    enable_scroll_bar = false,
    use_resize_increments = false,
    adjust_window_size_when_changing_font_size = false,
    send_composed_key_when_left_alt_is_pressed = false,
	send_composed_key_when_right_alt_is_pressed = false,
    
    --window_background_opacity = 0.75,
    --macos_window_background_blur = 20,

}
local opt = {
    flavor = "mocha",
    accent = "mauve",
}
catppuccin.apply_to_config(config, opt)

return config
