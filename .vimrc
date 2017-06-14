set showcmd
let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000

" for temporary files
set directory^=$HOME/.vim/tmp//

"vmap "+y :!xclip -f -sel clip<cr>
"map "+p :r!xclip -o -sel clip<cr>
"x forwarding windows
"http://vim.wikia.com/wiki/Accessing_the_system_clipboard
"set clipboard=unnamedplus

"find . -name "*" -type f -exec perl -pi -e 's/\r\n/\n/;' {}  \;
" Gives us 256 color schemes!
set t_Co=256
"set t_Co=16

execute pathogen#infect()

syntax enable
"set background=dark

set number
set relativenumber
set cul
"set mouse=a

set nottyfast
set lazyredraw

" pasting in insert mode
"set paste

" persistent undo
"set hidden
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

" Tabs
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" ctrl+x ctrl+o

" lucius raven serene simple wombat
let g:airline_theme='lucius' "tarik2a: ubuntu gnome terminal

"let g:solarized_termcolors=256
"colorscheme solarized
"let g:hybrid_use_Xresources = 1
"colorscheme hybrid
"colorscheme vivify
"colorscheme monokai
"colorscheme Tomorrow-Night
let g:jellybeans_overrides = {
\   'LineNr':       { '256ctermfg': '240', '256ctermbg': '235' },
\   'StatusLine':   { '256ctermfg': '15',  '256ctermbg': '21' },
\   'StatusLineNC': { '256ctermfg': '240', '256ctermbg': '235' },
\   'SignColumn':   {                      '256ctermbg': 'Black' },
\   'ColorColumn':  {                      '256ctermbg': '234' }
\ }
let g:jellybeans_background_color_256='none' "tarik2a: ubuntu gnome terminal
colorscheme jellybeans "tarik2a: ubuntu gnome termina

" transparancy
hi Normal ctermbg=none
highlight NonText ctermbg=none

":nnoremap <F5> :buffers<CR>:buffer<Space>
":nnoremap <F6> :buffers<CR>:sbuffer<Space>
"nmap oo o<Esc>k
"nmap OO O<Esc>j
nmap oo o<Esc>
nmap OO O<Esc>
":let mapleader = ","
"nmap <Ctrl-PgUp> gt
"nmap <Ctrl-PgDn> gT
"map <C-PageUp> :bp<CR>
"map <C-PageDown> :bn<CR>
"map <C-w> :bd<CR>
"map ;n :bn<cr>
"map ;p :bp<cr>
"map ;d :bd<cr>

"directory of oppened file
cnoremap <expr> %% expand('%:h').'/'

let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = 'node_modules\|vendor\|.git\'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-p>"
"    endif
"endfunction
"inoremap <expr> <tab> InsertTabWrapper()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Relative line numbers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"function! NumberToggle()
"  if(&relativenumber == 1)
"    set norelativenumber
"  else
"    set relativenumber
"  endif
"endfunc
"
"nnoremap <C-n> :call NumberToggle()<cr>
hi Search cterm=NONE ctermfg=grey ctermbg=blue

"vim hard mode
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
