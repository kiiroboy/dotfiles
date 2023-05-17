vim.g.mapleader= " "
vim.wo.fillchars='eob: '

local opts = { silent = true, noremap=true}
vim.keymap.set("i","{", "{}<left>", opts)
vim.keymap.set("n","Q", "<Nop>")
vim.keymap.set("n","q", "<Nop>")

-- move multiple block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- navigate while keeping the cursor on the middle
vim.keymap.set("n", "J", "<C-d>zz", opts)
vim.keymap.set("n", "K", "<C-u>zz", opts)
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- copy and keep same buffer
vim.keymap.set("x", "<leader>p", "\"_dP",opts)

-- copy/cut to clipboard
vim.keymap.set("n", "<leader>y", "\"+y",opts)
vim.keymap.set("v", "<leader>y", "\"+y",opts)
vim.keymap.set("n", "<leader>Y", "\"+Y",opts)
vim.keymap.set("n", "<leader>d", "\"_d",opts)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
