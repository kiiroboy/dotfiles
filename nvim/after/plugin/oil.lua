require("oil").setup({
    restore_win_options = true,
    view_options = {
        show_hidden = true
    },
    keymaps = {
        ["<leader>?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<leader>n"] = "actions.close",
        ["<leader>u"] = "actions.refresh",
        ["q"] = "actions.parent",
        ["~"] = "actions.open_cwd"
        -- ["`"] = "actions.cd",
 },
  -- Set to false to disable all of the above keymaps
  use_default_keymaps = true,
})
vim.keymap.set("n", "<leader>n", require("oil").open, { desc = "Open parent directory" })
