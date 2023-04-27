require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
ensure_installed = { "c", "lua", "vim", "python", "solidity" },
  -- auto_install = true,
  ignore_install = { "phpdoc" },
  highlight = {
    enable = true,
    disable = { "c", "rust" },
    additional_vim_regex_highlighting = false,
  },
}
