call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set ls=2
set ruler
set number

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set backspace=start,indent,eol

syntax enable 
set autoindent
set smartindent
set cindent
filetype plugin indent on

" set up solarized
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" enable mouse reporting in vim
if has("mouse")
    set mouse=a
endif

" set up closetag for html/xml filetypes only
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" display the current mode and partially-typed commands 
" in the status line
set showmode
set showcmd

" set up code folding for javascript
autocmd FileType javascript call JavaScriptFold()
autocmd FileType javascript set foldtext=getline(v:foldstart)

