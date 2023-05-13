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
require'toggleterm'.setup {
    size = 40,
    direction = 'float',
    open_mapping = [[<m-t>]],
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    persist_size = true,
    persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
    close_on_exit = true, -- close the terminal window when the process exits
}

local opts = {noremap = true, silent = true}
vim.keymap.set ('n', '<M-f>n', '<cmd>:ene <BAR> startinsert <CR>', opts)
vim.keymap.set ('n', '<M-f>f', '<cmd>FzfLua files<CR>', opts)
vim.keymap.set ('n', '<M-f>a', '<cmd>FzfLua files cwd=~/<CR>', opts)
vim.keymap.set ('n', '<M-f>h', '<cmd>FzfLua oldfiles<CR>', opts)
vim.keymap.set ('n', '<M-f>w', '<cmd>FzfLua grep_project<CR>', opts)
vim.keymap.set ('n', '<M-f>m', '<cmd>lua require("fzf-lua").marks()<CR>', opts)
vim.keymap.set ('n', '<M-f>q', '<cmd>:qa!<CR>', opts)
