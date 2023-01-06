set relativenumber
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set termguicolors
set nu
set nohlsearch
set noerrorbells
set nowrap
set scrolloff=8
set incsearch
set signcolumn=yes
set showcmd " Show (partial) command in status line.
set mouse=a " Enable mouse usage (all modes) in terminals
set colorcolumn=80
set cursorline

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
ino <C-C> <Esc>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Horizontal bar needs to disappear when inserting
autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

" Open new file adjacent to current file
nnoremap <leader>o :e <C-R>=expand("%:p:h") . "/" <CR>

set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum

" Follow Rust code style rules
au Filetype rust set colorcolumn=100


