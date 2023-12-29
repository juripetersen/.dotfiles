call plug#begin() " Themes Plug 'projekt0n/github-nvim-theme'
Plug 'morhetz/gruvbox'
Plug 'projekt0n/github-nvim-theme'

"Code completion
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'mfussenegger/nvim-jdtls'

" LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

"  Snippets
Plug 'L3MON4D3/LuaSnip'
" Snippet collection (Optional)
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}
Plug 'hrsh7th/vim-vsnip'
Plug 'VonHeikemen/lsp-zero.nvim'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'romgrk/nvim-treesitter-context'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"GUI
 Plug 'itchyny/lightline.vim'
 Plug 'itchyny/vim-gitbranch'
 Plug 'andymass/vim-matchup'
 Plug 'RRethy/nvim-base16'

" Languages
Plug 'rust-lang/rust.vim'
Plug 'phpactor/phpactor'
Plug 'whonore/Coqtail'
Plug 'cespare/vim-toml', {'branch': 'main'}
Plug 'stephpy/vim-yaml'
Plug 'rhysd/vim-clang-format'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

let mapleader = " "

" vim specific remaps
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap <C-y> "*y<Esc>

augroup vvjpet
    autocmd!
    " autocmd BufWritePre *\(.blade.php\)\@<! :lua vim.lsp.buf.formatting()
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END
