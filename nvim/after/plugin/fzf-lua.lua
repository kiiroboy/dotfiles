require'fzf-lua'.setup {
    winopts = { -- Only valid when using a float window
        info = false,
        preview = {
          scrollbar = false,
        },
    },
    hls = {
        border = 'Normal',
        preview_border = 'Normal'
    },
    fzf_opts = {
    },
    files = {
        cmd = 'fd -H',
    },
    grep = {
        rg_opts = "--column --line-number --sort-files --no-heading --smart-case -g '!{.git,node_modules}/*'",
    },
}
