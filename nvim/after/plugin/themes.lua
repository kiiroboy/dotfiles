require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "mocha",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {
        all = {
            mantle   = "#18191A",
            base     = "#18191A",
            crust    = "#18191A"
        }
    },
    custom_highlights = function(colors)
        return {
            StatusLine = {bg = colors.base},
            CursorLineNr = {fg = colors.yellow},
            Normal = {ctermbg=NONE, guibg=NONE}
        }
    end,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

vim.cmd.colorscheme "catppuccin"
-- setup must be called before loading
vim.api.nvim_set_hl(0, "Normal", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "NonText", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "LineNr", { fg='#a6adc8'})
--vim.api.nvim_set_hl(0, "CursorLine", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "NormalNC", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "Pmenu", { ctermbg=NONE, guibg=NONE })
vim.cmd([[hi! default link CmpItemKind CmptemMenuDefault]])
