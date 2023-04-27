call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do' : 'TSUpdate'}
Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'goolord/alpha-nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'neovim/nvim-lspconfig'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()
lua require('setup')
colorscheme catppuccin-mocha

filetype plugin indent on
syntax enable
let g:mapleader = " "
let &fcs='eob: '
if (has("termguicolors"))
    set termguicolors
endif
set hidden
set tabstop=4
set shiftwidth=4
set expandtab
set nu rnu
set hlsearch
set mouse=a
set noshowmode
set background=dark
set cursorline

inoremap { {}<left>
nnoremap <silent><M-f>n <cmd>:ene <BAR> startinsert <CR>
nnoremap <silent><M-f>f <cmd>FzfLua files<CR>
nnoremap <silent><M-f>a <cmd>FzfLua files cwd=~/<CR>
nnoremap <silent><M-f>h <cmd>FzfLua oldfiles<CR>
nnoremap <silent><M-f>w <cmd>FzfLua grep_project<CR>
nnoremap <silent><M-f>m <cmd>lua require('fzf-lua').marks()<CR>
nnoremap <silent><M-f>q <cmd>:qa!<CR>
inoremap <expr> <CR> search('{\%#}', 'n') ? "\<CR>\<CR>\<Up>\<C-f>" : "\<CR>"

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! LineNr guifg=#a6adc8 guibg=NONE
hi! CursorLine ctermbg=NONE guibg=NONE
hi! CursorLineNr guifg=#f9e2af
hi! NormalNC ctermbg=NONE guibg=NONE
hi! NormalFloat ctermbg=NONE guibg=NONE
