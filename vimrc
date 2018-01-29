" Pathgen infect
call pathogen#infect()
filetype plugin on
filetype plugin indent on
call pathogen#helptags()

" Python 79-char ruler
match ErrorMsg '\%>80v.\+'

" paste toggle
set pastetoggle=<F2>

set nocompatible
set number
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmatch
set mouse=a
set title
set hlsearch
set incsearch
set laststatus=2
"colorscheme SlateDark 
"
colorscheme SlateDark 
syntax enable
syntax on

" Basic colouring and indexing
set encoding=utf-8
set nowrap
set ruler
set showcmd

if $TERM == "xterm-256color"
    set t_Co=256
endif

" For ctags
set tags=./tags;/
set tags+=~/torch/pkg/optim/tags
set tags+=~/torch/pkg/torch/tags
set tags+=~/torch/pkg/image/tags
set tags+=~/torch/extra/nn/tags

" Youcompleteme
let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_use_ultisnips_completer = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_collect_identifiers_from_tags_files = 1

" vim notes configuration "
let g:notes_directories = ['~/Documents/', '~/Dropbox/ETC']

" Airline
let g:airline_power_line_fonts=1
let g:airline#extensions#tabline#enabled = 1

" Nerdtree 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

" Vim autotag
map <F12> :UpdateTags<CR>

" Vim tagbar
map <F8> :TagbarToggle<CR>

" Syntastics
"set statusline+=%#warningmsg#
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':   [],'passive_filetypes': [] }
noremap <C-w>e :SyntasticCheck<CR>
noremap <C-w>f :SyntasticToggleMode<CR>

set statusline+=%{SyntasticsStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" Indent guides
"let g:indent_guides_enable_on_vim_startup=1

" Python syntax
let g:python_highlight_all = 1
let Python2Syntax = 1 

" if it is not working - change color file
highlight Pmenu ctermfg=black ctermbg=red

let vim_markdown_preview_github=1
