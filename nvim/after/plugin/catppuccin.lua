require("catppuccin").setup({
    integrations = {
		alpha = true,
        cmp = true,
        dashboard = true,
        lualine = false,
        lsp_saga = true,
        markdown = true,
        nvimtree = true,
        treesitter = true,
    },
})
vim.cmd.colorscheme "catppuccin-mocha"
vim.api.nvim_set_hl(0, "Normal", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "NonText", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "LineNr", { fg='#a6adc8'})
vim.api.nvim_set_hl(0, "CursorLine", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg='#f9e2af'})
vim.api.nvim_set_hl(0, "NormalNC", { ctermbg=NONE, guibg=NONE })
--vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "Pmenu", { ctermbg=NONE, guibg=NONE })
vim.cmd([[hi! default link CmpItemKind CmpItemMenuDefault]])
