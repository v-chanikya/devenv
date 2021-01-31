" === Plugins ===
call plug#begin('~/.vim/plugged')

try
  source ~/.vimrc.plugs
catch
endtry

call plug#end()

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

" === Plugin settings ===

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_jump = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_c_config_file = ".syntastic"
let g:clang_library_path = "/usr/lib/x86_64-linux-gnu/libclang-6.0.so.1"

" == mxw/vim-jsx ==
let g:jsx_ext_required = 0


" === Keybindings ===

" == junegunn/fzf ==
nnoremap <C-B> :FZF<CR>
inoremap <C-B> <ESC>:FZF<CR>i

" == scrooloose/nerdtree ==
nnoremap <C-\> :NERDTreeToggle<CR>
inoremap <C-\> <ESC>:NERDTreeToggle<CR>

" === Editor options ===

" == Spacing ==
set wrap
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" == Spell check
set spelllang=en
set spell
"set noshiftround
"set textwidth=79
"set formatoptions=tcqrn1
"set tabstop=4

" == Clipboard ==
set clipboard=unnamed

" == Pastemode ==
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

" == Theme ==
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme badwolf
"set background=dark

"set nocompatible

" == Other ==
set number
set hls

" == set mapleader
let mapleader = ";"

" == Custom keybindings
map <Leader>c :Commentary<CR>
"nnoremap <C-/> :Commentary<CR>
"inoremap <C-/> <ESC>:Commentary<CR>

" == buffers switch ==
map <Leader>j :bp<CR>
map <Leader>k :bn<CR>
map <Leader>h :bd<CR>
"map <C-`> :bnext<CR>
"nnoremap <C-`> :bnext<CR>
"nnoremap <A-1> :1b<CR>
"nnoremap <A-2> :2b<CR>
"nnoremap <A-3> :3b<CR>
"nnoremap <A-4> :4b<CR>
"nnoremap <A-5> :5b<CR>
"inoremap <A-1> <ESC>:1b<CR>
"inoremap <A-2> <ESC>:2b<CR>
"inoremap <A-3> <ESC>:3b<CR>
"inoremap <A-4> <ESC>:4b<CR>
"inoremap <A-5> <ESC>:5b<CR>
