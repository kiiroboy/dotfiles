local dashboard = require("alpha.themes.dashboard")
dashboard.section.buttons.val = {
    dashboard.button("ALT ,", "  Continue", "<m-,>"),
    dashboard.button("ALT t", "  Toggle Terminal", ":ToggleTermToggleAll!<CR>"),
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
function restore_prev ()
    local prev = vim.api.nvim_replace_termcodes("normal! <C-o><CR>", true, false, true)
    local startName = vim.fn.expand("%")
    repeat 
        local currentJumpIdx = vim.fn.getjumplist()[2]
        if currentJumpIdx < 1 then
            print("Reached the oldest buffer")
            return
        end
        pcall(vim.cmd,prev)
    until(vim.fn.expand("%") ~= startName)
end
function restore_next()
    local next = vim.api.nvim_replace_termcodes("normal! 1<C-i><CR>", true, false, true)
    local startName = vim.fn.expand("%")
    repeat 
        local lst = vim.fn.getjumplist()
        local lstSize = 0
        for _ in pairs(lst[1]) do lstSize = lstSize + 1 end
        local currentJumpIdx = lst[2]
        if currentJumpIdx >= lstSize - 1 then
            print("Reached the newest buffer")
            return
        end
        pcall(vim.cmd,next)
    until(vim.fn.expand("%") ~= startName)
end
local opts = {noremap = true, silent = true}
--vim.keymap.set ('n', '<m-p>', '<c-o><c-o><CR>', opts)
vim.keymap.set ('n', '<leader>n', '<cmd>:ene <BAR> startinsert <CR>', opts)
vim.keymap.set ('n', '<leader>f', '<cmd>FzfLua files<CR>', opts)
vim.keymap.set ('n', '<leader>a', '<cmd>FzfLua files cwd=~/<CR>', opts)
vim.keymap.set ('n', '<leader>h', '<cmd>FzfLua oldfiles<CR>', opts)
vim.keymap.set ('n', '<leader>w', '<cmd>FzfLua grep_project<CR>', opts)
vim.keymap.set ('n', '<leader>m', '<cmd>lua require("fzf-lua").jumps()<CR>', opts)
vim.keymap.set ('n', '<m-q>', '<cmd>:qa!<CR>', opts)
vim.keymap.set ('n', '<m-,>', restore_prev, {silent= true, noremap=true})
vim.keymap.set ('n', '<m-.>', restore_next, {silent= true, noremap=true})
