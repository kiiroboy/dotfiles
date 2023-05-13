local saga = require'lspsaga'
saga.setup {
  server_filetype_map = {
    typescript = 'typescript',
  },
  symbol_in_winbar={
	  enable=false
  }

}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'J', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
