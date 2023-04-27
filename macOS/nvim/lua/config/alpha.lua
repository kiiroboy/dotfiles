local dashboard = require("alpha.themes.dashboard")
dashboard.section.buttons.val = {
    dashboard.button("ALT f n", "  New File", ":ene <BAR> startinsert <CR>"),
    dashboard.button("ALT t", "  Toggle Terminal", ":ToggleTerm<CR>"),
    dashboard.button("ALT f f", "  Find Local", ":FzfLua files<CR>"),
    dashboard.button("ALT f a", "  Find Global", ":FzfLua files cwd=~/<CR>"),
    dashboard.button("ALT f h", "  Recent Files", ":FzfLua oldfiles<CR>"),
    dashboard.button("ALT f w", "  Find Word", ":FzfLua grep_project<CR>"),
    dashboard.button("ALT f m", "  Bookmarks", ":lua require('fzf-lua').marks()<CR>"),
    --dashboard.button("SPC l", "  Open last session", "<cmd>SessionManager load_last_session<CR>"),
    --dashboard.button("ALT u", "  Update plugins", ":PlugUpdate<CR>"),
    dashboard.button("ALT f q", "  Quit Neovim", ":qa!<CR>"),
}
require'alpha'.setup(dashboard.config)
