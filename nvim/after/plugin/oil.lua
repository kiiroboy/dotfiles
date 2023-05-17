require("oil").setup({
    restore_win_options = true,
    view_options = {
        show_hidden = true
    },
    keymaps = {
        ["<leader>?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<leader>`"] = "actions.close",
        ["<leader>u"] = "actions.refresh",
        ["q"] = "actions.parent",
        ["Q"] = "actions.open_cwd",
        ["`"] = "actions.cd",
 },
  -- Set to false to disable all of the above keymaps
  use_default_keymaps = true,
})
vim.keymap.set("n", "<leader>`", require("oil").open, { desc = "Open parent directory" })
