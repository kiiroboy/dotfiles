local lspconfig = require('lspconfig')

-- Define the on_attach function
local function on_attach(client, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)




end

-- Set up Pyright
lspconfig.pyright.setup {
    on_attach = on_attach,
    -- You can add other specific options for Pyright here if needed
}

lspconfig.gopls.setup({})
