require'fzf-lua'.setup {
    winopts = { -- Only valid when using a float window
        info = false,
        preview = {
          scrollbar = false,
        }
    },
    fzf_opts = {
        ['--layout'] = "default",
        ['--no-separator'] = '',
        ['--no-info'] = '',
    },
    files = {
        cmd = 'fd -H',
    },
    grep = {
        rg_opts = "--column --line-number --sort-files --no-heading --color=always --smart-case -g '!{.git,node_modules}/*'",
    },
}
