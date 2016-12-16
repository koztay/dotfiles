execute pathogen#infect()

filetype plugin indent on
syntax on
set nocompatible              " be iMproved, required
"filetype off                  " required
"
"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"
"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"" Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
"" different version somewhere else.
"" Plugin 'ascenator/L9', {'name': 'newL9'}
"" do not use this it conflicts with L9
"
"" Plugin 'davidhalter/jedi-vim'			" code completion plugin
"Plugin 'Valloric/YouCompleteMe'			" code completion plugin
"Plugin 'tmhedberg/SimpylFold'               	" code folding plugin
"Plugin 'vim-scripts/indentpython.vim'      	" auto-indetation plugin
"Plugin 'scrooloose/syntastic'                  	" syntax checking plugin
"Plugin 'nvie/vim-flake8'                      	" PEP8 checking plugin
"Plugin 'jnurmine/Zenburn'                      	" color schemes
"Plugin 'altercation/vim-colors-solarized' 	" color schemes
"" Plugin 'lambdalisue/vim-python-virtualenv'	" activate virtualenv within Vim -
"" could not find the command how to activate virtualenv.
"
"" activate virtualenv within Vim
"Plugin 'jmcantrell/vim-virtualenv'
"" :VirtualEnvActivate myenv
"" :VirtualEnvDeactivate
"" :VirtualEnvList
"" It supports tab completion too...
""
"" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " powerline plugin
"" Plugin 'stephenmckinney/vim-solarized-powerline' "solarized powerline theme
"" Yukarıdaki powerline plugini yerine airline plugini kullanmak daha iyi.
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"
"" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
"" To ignore plugin indent changes, instead use:
""filetype plugin on
""
"" Brief help
"" :PluginList       - lists configured plugins
"" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line

set nu 						" this is for line numbering
let g:SimpylFold_docstring_preview=1     	" to see the docstrings in folded code
let python_highlight_all=1                    	" syntax checking settings
syntax on                                       " syntax checking settings

" set color schemes according to vim mode
let g:SimpylFold_docstring_preview=1
let python_highlight_all=1                  	" syntax checking settings
syntax on                                       " syntax checking settings

" set color schemes according to vim mode
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif

" call togglebg#map('<F5>')           		" toggle solarized light and dark themes by F5

" python with virtualenv support
"virtual env support için yazdığım kodları anlamadı vim, hata verdi...
"
" UTF-8 Support
set encoding=utf-8

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

set pastetoggle=<F2>
set clipboard=unnamed


" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" Apply g:pythonworkon to statusline
" let &statusline='%F%m%r%h%w [FORMAT=%{&ff}] [ENC=%{&fileencoding}] [TYPE=%Y] [ASCII=\%03.3b] [HEX=\%02.2B] [POS=%04l,%04v][%p%%] [LEN=%L] %= [WORKON=%{pythonworkon}]'

" youcompleteme settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" below settings are recommended by django offical site at the following url
" https://code.djangoproject.com/wiki/UsingVimWithDjango
let g:ycm_collect_identifiers_from_tags_files = 1 	" Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 			" Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 		" Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 			" Completion in comments
let g:ycm_complete_in_strings = 1 			" Completion in string


" powerline plugin 'inini iptal edince aşağıdaki ayarları da kaldırdım...
" powerline troubleshooting settings
" let g:Powerline_symbols='fancy'
set laststatus=2
"let g:Powerline_theme='short'
" let g:Powerline_colorscheme='solarized256_dark'

" vim-airline plugini ayarları :
let g:airline_theme='wombat'
" let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline_section_b = airline#section#create('(%{virtualenv#statusline()})')
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

syntax enable
set number
colorscheme lucario
