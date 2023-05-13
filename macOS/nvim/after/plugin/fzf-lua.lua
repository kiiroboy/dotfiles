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
}
