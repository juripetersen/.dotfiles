" colorscheme github_light_default
let base16colorspace=256
let g:base16_shell_path="~/.config/base16-shell/scripts/"
set background=dark

" let g:gruvbox_contrast_dark = ('dark')
" colorscheme gruvbox

colorscheme base16-gruvbox-dark-hard
syntax on

set guioptions-=T " Remove toolbar
set vb t_vb= " No more beeps
set backspace=2 " Backspace over newlines
set nofoldenable
set ttyfast

" Show those damn hidden characters
" Verbose: set listchars=nbsp:¬,eol:¶,extends:»,precedes:«,trail:•
set listchars=nbsp:¬,extends:»,precedes:«,trail:•

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

function! Toggle_background()
    if g:colors_name == "base16-gruvbox-dark-hard"
        exec 'colorscheme github_light_default'
    else
        exec 'colorscheme base16-gruvbox-dark-hard'
    endif
endfunction

nnoremap <leader>tb :call Toggle_background()<CR>


