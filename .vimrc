" vim
set autowrite 
set title 
set laststatus=2
set showcmd 
set ruler 
set incsearch 
set ignorecase 

set softtabstop=4
set shiftwidth=4
set cindent 

set wildmenu 
set smartcase 
set matchtime=2
set showmatch 

set cursorline 
set hlsearch 

" background and font
set bg=dark 

" codes fold
set fdm=syntax 
set nofoldenable " close when restart vim"

syntax on
" syntax enable
set t_Co=256
set number
set tabstop=4

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YCM
" Plugin 'Valloric/YouCompleteMe'

" match brackets
Plugin 'Raimondi/delimitMate'

" show state
Plugin 'vim-airline/vim-airline'

" tarbar
Plugin 'majutsushi/tagbar'

" vim theme
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'

" enhance cpp
Plugin 'octol/vim-cpp-enhanced-highlight'

" indent guide
Plugin 'nathanaelkane/vim-indent-guides'

" nerdtree
Plugin 'scrooloose/nerdtree'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" YouCompleteMe
set rtp +=~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py
let g:ycm_server_python_interpreter = '/usr/bin/python'
"let g:ycm_global_ycm_extra_conf = '/Users/shaoyidi//.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
"let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
"let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_confirm_extra_conf = 0
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_select_completion = ['<CR>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<s-p>', '<Up>']
let g:ycm_complete_in_comments = 0                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 1                           " 0禁用语法检查
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>" |            " TAB即选中当前项,if use enter, then change TAB to CR  
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处
let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项
let g:ycm_warning_symbol = 'w>'
let g:ycm_error_symbol = 'e>'
let g:ycm_autoclose_preview_window_after_completion = 0

" airline
" let g:airline_theme="luna" 
let g:airline_powerline_fonts = 1

" indent guide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" theme
"colorscheme solarized
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"let g:solarized_contrast='normal'
"let g:solarized_visibility='normal'

colorscheme molokai
let g:solarized_termcolors=256

" tagbar
nmap <leader>tb :TagbarToggle<CR> "\tb open tagbar window "
let g:tagbar_autofocus=1
let g:tagbar_sort=0 "sort the tag"
let g:tagbar_ctags_bin='ctags'

" nerdtree
nmap <Leader>nt :NERDTreeToggle<CR>
let NERTTreeShowHidden=1
let NERDTreeAutoDeleteBuff=1
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.egg$', '\.git$', '\.so$', '\.svn$', '\.hg$']

