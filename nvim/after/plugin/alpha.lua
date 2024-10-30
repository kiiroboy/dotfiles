local dashboard = require("alpha.themes.dashboard")
dashboard.section.buttons.val = {
    dashboard.button("SPC h", "  History", ":FzfLua oldfiles<CR>"),
    dashboard.button("SPC e", "  New File", ":ene <BAR> startinsert <CR>"),
    dashboard.button("SPC f", "  Find Local", ":FzfLua files<CR>"),
    dashboard.button("SPC a", "  Find Global", ":FzfLua files cwd=~/<CR>"),
    dashboard.button("SPC w", "  Find Word", ":FzfLua grep_project<CR>"),
    dashboard.button("SPC q", "  Quit Neovim", ":qa!<CR>"),
}
require'alpha'.setup(dashboard.config)
local opts = {noremap = true, silent = true}
vim.keymap.set ('n', '<leader>h', '<cmd>FzfLua oldfiles<CR>', opts)
vim.keymap.set ('n', '<leader>e', '<cmd>:ene <BAR> startinsert <CR>', opts)
vim.keymap.set ('n', '<leader>f', '<cmd>FzfLua files<CR>', opts)
vim.keymap.set ('n', '<leader>a', '<cmd>FzfLua files cwd=~/<CR>', opts)
vim.keymap.set ('n', '<leader>w', '<cmd>FzfLua grep_project<CR>', opts)
vim.keymap.set ('n', '<leader>q', '<cmd>:qa!<CR>', opts)
