set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle/')
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
Plugin 'majutsushi/tagbar'          	" Class/module browser

"------------------=== Other ===----------------------
Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more

"--------------=== Coloring vim ===---------------
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'savq/melange'
Plugin 'xolox/vim-colorscheme-switcher'
"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'mitsuhiko/vim-jinja'		" Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim
Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required
filetype plugin indent on    " required
set backspace=indent,eol,start
aunmenu Help.
aunmenu Window.
let no_buffers_menu=1
set mousemodel=popup
tab sball
set switchbuf=useopen
set termguicolors
colorscheme melange
" отключаем пищалку и мигание
set visualbell t_vb= 
set novisualbell       
set enc=utf-8	     " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch	     " инкреминтируемый поиск
set hlsearch	     " подсветка результатов поиска
set nu	             
" TagBar настройки
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

" NerdTree настройки
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  

