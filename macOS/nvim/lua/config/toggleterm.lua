require'toggleterm'.setup {
    size = 40,
    direction = 'float',
    open_mapping = [[<m-t>]],
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    persist_size = true,
    persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
    close_on_exit = true, -- close the terminal window when the process exits
}
