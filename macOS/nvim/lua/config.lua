require'nvim-treesitter.configs'.setup {
    ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install={"phpdoc"},
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    highlight = {
        enable = true,              -- false will disable the whole extension
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}
require'lualine'.setup {
}

require'fzf-lua'.setup {
    winopts = { -- Only valid when using a float window
        preview = {
          cmd = 'cat',
          --wrap = 'nowrap',
          --vertical = 'up:80%',
        }
    },
    files = {
        cmd = 'fd -H',
    },
    grep = {
        rg_opts = "--hidden --column --line-number --sort-files --no-heading --color=always --smart-case -g '!{.git,node_modules}/*'",
    },
--    fzf_colors = {
--    ["fg"] = { "fg", "Normal" },
--    ["bg"] = { "bg", "Normal" },
--    ["hl"] = { "bg", "Normal"},
--    ["fg+"] = { "fg", "Normal" },
--    ["bg+"] = { "fg", "CursorLine"},
--    ["hl+"] = { "bg", "Normal" },
--    ["info"] = { "bg", "Normal"},
--    ["prompt"] = { "bg", "Normal" },
--    ["pointer"] = { "bg", "Normal" },
--    ["marker"] = { "bg", "Normal" },
--    ["spinner"] = { "bg", "Normal" },
--    ["header"] = { "fg", "Normal" },
--    ["gutter"] = { "fg", "Normal" },
--  }
}

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
require'lsp'
