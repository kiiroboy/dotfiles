local saga = require'lspsaga'
saga.setup {
    ui = {
        colors = {
            normal_bg = "NONE",
            title_bg = "NONE"
        }
    },
    server_filetype_map = {
        typescript = 'typescript',
    },
    symbol_in_winbar={
        enable=false
    }

}
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<m-n>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<m-p>', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', 'D', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set("n", "<m-t>", "<cmd>Lspsaga term_toggle<CR>",opts)
vim.keymap.set("t", "<m-t>", "exit<CR>",opts)
