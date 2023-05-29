local dashboard = require("alpha.themes.dashboard")
dashboard.section.buttons.val = {
    dashboard.button("ALT t", "  Toggle Terminal", ":Lspsaga term_toggle<CR>"),
    dashboard.button("SPC n", "  New File", ":ene <BAR> startinsert <CR>"),
    dashboard.button("SPC f", "  Find Local", ":FzfLua files<CR>"),
    dashboard.button("SPC a", "  Find Global", ":FzfLua files cwd=~/<CR>"),
    dashboard.button("SPC h", "  Recent Files", ":FzfLua oldfiles<CR>"),
    dashboard.button("SPC w", "  Find Word", ":FzfLua grep_project<CR>"),
    dashboard.button("SPC m", "  Bookmarks", ":lua require('fzf-lua').marks()<CR>"),
    --dashboard.button("ALT u", "  Update plugins", ":PlugUpdate<CR>"),
    dashboard.button("ALT q", "  Quit Neovim", ":qa!<CR>"),
}
require'alpha'.setup(dashboard.config)
local opts = {noremap = true, silent = true}
--vim.keymap.set ('n', '<m-p>', '<c-o><c-o><CR>', opts)
vim.keymap.set ('n', '<leader>n', '<cmd>:ene <BAR> startinsert <CR>', opts)
vim.keymap.set ('n', '<leader>f', '<cmd>FzfLua files<CR>', opts)
vim.keymap.set ('n', '<leader>a', '<cmd>FzfLua files cwd=~/<CR>', opts)
vim.keymap.set ('n', '<leader>h', '<cmd>FzfLua oldfiles<CR>', opts)
vim.keymap.set ('n', '<leader>w', '<cmd>FzfLua grep_project<CR>', opts)
vim.keymap.set ('n', '<leader>m', '<cmd>lua require("fzf-lua").jumps()<CR>', opts)
vim.keymap.set ('n', '<m-q>', '<cmd>:qa!<CR>', opts)
