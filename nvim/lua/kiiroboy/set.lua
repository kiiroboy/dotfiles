vim.o.termguicolors=true
vim.o.hidden=true
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.nu=true
vim.o.rnu=true
vim.o.hlsearch=true
vim.o.mouse=a
vim.o.noshowmode=true
vim.o.background=dark
vim.o.cursorline=true
vim.o.completeopt=menuone,noinsert,noselect
vim.cmd.colorscheme "catppuccin-mocha"
vim.api.nvim_set_hl(0, "Normal", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "NonText", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "LineNr", { fg='#a6adc8'})
vim.api.nvim_set_hl(0, "CursorLine", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg='#f9e2af'})
vim.api.nvim_set_hl(0, "NormalNC", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "Pmenu", { ctermbg=NONE, guibg=NONE })
vim.cmd([[hi! default link CmpItemKind CmpItemMenuDefault]])
