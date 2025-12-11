if vim.env.TMUX then
    local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
    if handle then
        local result = handle:read("*a")
        handle:close()
        vim.o.background = result:match("Dark") and "dark" or "light"
    else
        vim.o.background = "light" -- fallback
    end
end
require("catppuccin").setup({
    flavour = "auto",
    -- Default flavor, e.g., for dark mode
    term_colors=true,
    background = {
       -- Automatically sets the background based on 'set background=light' or 'set background=dark'
        light = "latte", -- Light flavor
        dark = "mocha",  -- Dark flavor
    },
    custom_highlights = function(colors)
        return {
            NormalFloat = {bg = colors.none},
            Search = {fg = colors.base, bg = colors.mauve},
            IncSearch = {fg = colors.base, bg = colors.mauve},
            CurSearch = {fg = colors.base, bg = colors.yellow},

        }
    end,

    -- Other configuration options can be added here
    transparent_background = true,
    -- styles = { comments = { "italic" }, ... },
    -- integrations = { cmp = true, treesitter = true, ... },
})
vim.cmd.colorscheme("catppuccin")
