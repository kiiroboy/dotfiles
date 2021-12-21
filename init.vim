set shell=/bin/sh
filetype plugin indent on
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set number
set hlsearch
set mouse=a
set cursorline
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
noremap <C-k> <S-k>
noremap <C-j> <S-j>
noremap <S-k> {
noremap <S-j> }
call plug#begin('~/.config/nvim/plugged')
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'navarasu/onedark.nvim'
call plug#end()
colorscheme onedark
hi Normal ctermbg=none guibg=none
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF
hi CursorLineNr cterm=NONE gui=NONE guifg='yellow'
