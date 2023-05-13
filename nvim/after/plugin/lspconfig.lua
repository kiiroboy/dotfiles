local lspconfig = require 'lspconfig'
local configs = require 'lspconfig.configs'

lspconfig.tsserver.setup {
    on_attach = on_attach,
    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    cmd= { 'typescript-language-server', '--stdio' }
}
lspconfig.pyright.setup{}
lspconfig.solidity = {
  default_config = {
    cmd = { 'solidity-ls', '--stdio' },
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'solidity' },
    root_dir = lspconfig.util.root_pattern("brownie-config.yaml", ".git"),
    settings = {
    -- example of global remapping
        solidity = { 
            includePath = '/Users/tath2701/.brownie/packages/', 
            remapping = { 
                ["@openzeppelin/"] = '/OpenZeppelin/openzeppelin-contracts@4.7.2/',
                ["@chainlink/"] = '/smartcontractkit/chainlink@1.9.0/' 
            } 
        }
    },
    single_file_support = true,
  },
}

lspconfig.gopls.setup{}
