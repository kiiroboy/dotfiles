vim.g.mapleader= " "
vim.wo.fillchars='eob: '

local opts = { expr = true, silent = true, noremap=true}
vim.keymap.set("i","{", "{}<left>")
vim.keymap.set("n","q", "<Nop>")
vim.keymap.set('i', '<CR>', function() return vim.fn.search('{%#}', 'n') and '<CR><CR><Up><C-f>' or '<CR>' end, opts)

