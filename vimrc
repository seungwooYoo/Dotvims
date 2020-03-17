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


syntax enable
syntax on
highlight Search cterm=None ctermfg=red ctermbg=grey

"colorscheme burnttoast256 
"colorscheme SlateDark 
"colorscheme dracula
"colorscheme molokai
colorscheme molokai_dark


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
"let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
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
let NERDTreeIgnore = ['\.pyc$']


" Vim autotag
map <F12> :UpdateTags<CR>

"map <C-p> :set number relativenumber<CR>
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

" Syntastics
"set statusline+=%#warningmsg#
"let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':   [],'passive_filetypes': [] }
"noremap <C-w>e :SyntasticCheck<CR>
"noremap <C-w>f :SyntasticToggleMode<CR>
"
"set statusline+=%{SyntasticsStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 1

" Indent guides
let g:indent_guides_enable_on_vim_startup=0
let g:indentLine_color_term=239
"let g:indentLine_bgcolor_term=0
"let g:indentLine_bgcolor_gui='#000000'
let g:indentLine_char = '|'
let g:indentLine_enabled = 1

" Python syntax
let g:python_highlight_all = 1
let Python2Syntax = 1 

" if it is not working - change color file
"highlight Pmenu ctermfg=black ctermbg=red

let vim_markdown_preview_github=1

" easytags
let g:easytags_async=1
let g:easytags_auto_highlight=0

" Useful
nnoremap gp oipdb.set_trace()<ESC>
nnoremap dt o#TODO<ESC>

"" Useful for buffer close
command! BW :bn|:bd#
""command Bd bp\|bd \#

let g:todo_highlight_config = {
      \   'REVIEW': {},
      \   'NOTE': {
      \     'gui_fg_color': '#ffffff',
      \     'gui_bg_color': '#ffbd2a',
      \     'cterm_fg_color': 'white',
      \     'cterm_bg_color': '214'
      \   }
      \ }

