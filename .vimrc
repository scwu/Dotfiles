set nocompatible               " be iMproved
filetype off                   " required!

" non standard bash
set shell=/bin/sh

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'fu'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ddollar/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'chrisbra/NrrwRgn'
Bundle 'tpope/vim-unimpaired'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/ZoomWin'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'
Bundle 'cakebaker/scss-syntax.vim'

Bundle 'klen/python-mode'
Bundle 'nono/vim-handlebars'
Bundle 'kchmck/vim-coffee-script'
Bundle 'godlygeek/tabular'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin on 
filetype indent on     " required!

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving and exiting
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=3

" Turn on the WiLd menu
set wildmenu

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

"Always show current position
set ruler
set number

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l>

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Add a bit extra margin to the left
set foldcolumn=1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if &term!="xterm"
  set t_Co=256            " use 256 colors in vim
  colorscheme fu   " an appropriate color scheme
endif

syntax enable
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac"

if has("mac") || has("macunix")
  set gfn=Menlo:h14
  set shell=/bin/bash
elseif has("win16") || has("win32")
  set gfn=Bitstream\ Vera\ Sans\ Mono:h10
elseif has("linux")
  set gfn=Monospace\ 10
  set shell=/bin/bash
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set autoindent "Auto indent
set smartindent "Smart indent
set wrap "Wrap lines

" remove tabs when pasting
set pastetoggle=<F2>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
nmap <silent> <leader>ul :t.<CR>Vr=

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Map Control-# to switch tabs
map  <C-0> 0gt
imap <C-0> <Esc>0gt
map  <C-1> 1gt
imap <C-1> <Esc>1gt
map  <C-2> 2gt
imap <C-2> <Esc>2gt
map  <C-3> 3gt
imap <C-3> <Esc>3gt
map  <C-4> 4gt
imap <C-4> <Esc>4gt
map  <C-5> 5gt
imap <C-5> <Esc>5gt
map  <C-6> 6gt
imap <C-6> <Esc>6gt
map  <C-7> 7gt
imap <C-7> <Esc>7gt
map  <C-8> 8gt
imap <C-8> <Esc>8gt
map  <C-9> 9gt
imap <C-9> <Esc>9gt

" Adjust viewports to the same size
map <Leader>= <C-w>=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
map <leader>; A;<ESC>



""""""""""""""""""""""""""""""""""""""""""
" Other 
""""""""""""""""""""""""""""""""""""""""""

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Bash like keys for the command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" Map auto complete of (, ", ', [
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap {<CR> {<CR>}<esc>O
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap < <><esc>i

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r
  set statusline+=Line:%l/%L[%p%%]
  set statusline+=Col:%v
  set statusline+=Buf:#%n
  set statusline+=[%b][0x%B]
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn persistent undo on 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
  set undodir=~/.dotfiles/temp/undos
  set undofile
catch
endtry

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Omni complete functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" set omnifunc=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
let g:yankring_history_dir = '~/.dotfiles/temp/'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>n :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$']
 
" If the parameter is a directory, cd into it
function s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)
  
  if explicitDirectory
    exe "cd " . fnameescape(a:directory)
  endif
  
  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
    return
  endif
  
  if directory
    NERDTree
    wincmd p
    bd
  endif
  
  if explicitDirectory
    wincmd p
  endif
endfunction

" NERDTree utility function
function s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
    let stay = a:1
  end

  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif
endfunction




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height = 20
map <C-p> :CtrlP<CR>
imap <C-p> <ESC>:CtrlP<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|swp|o)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDCommenter 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>c <plug>NERDCommenterToggle<CR>
imap <leader>c <Esc><plug>NERDCommenterToggle<CR>i 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>rt :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>gb :Gblame<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gl :Glog<CR>
map <leader>gc :Gcommit<CR>
map <leader>gp :Git push<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ZoomWin 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>z :ZoomWin<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabular
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BufferGator
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>g :BuffergatorToggle


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable pylint checking every save
let g:pymode_lint_write = 0

" Set key 'R' for run python code
let g:pymode_run_key = 'R'

" Load show documentation plugin
let g:pymode_doc = 1

" Key for show python documentation
let g:pymode_doc_key = 'K'

" Load run code plugin
let g:pymode_run = 1

" Key for run python code
let g:pymode_run_key = '<leader>r'

" Load pylint code plugin
let g:pymode_lint = 1

" Switch pylint, pyflakes, pep8, mccabe code-checkers
" Can have multiply values "pep8,pyflakes,mcccabe"
let g:pymode_lint_checker = "pyflakes,pep8,mccabe"

" Skip errors and warnings
" E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and etc
let g:pymode_lint_ignore = "E501"

" Select errors and warnings
" E.g. "E4,W"
let g:pymode_lint_select = ""

" Run linter on the fly
let g:pymode_lint_onfly = 0

" Pylint configuration file
" If file not found use 'pylintrc' from python-mode plugin directory
let g:pymode_lint_config = "$HOME/.pylintrc"

" Check code every save
let g:pymode_lint_write = 1

" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 1

" Show error message if cursor placed at the error line
let g:pymode_lint_message = 1

" Auto jump on first error
let g:pymode_lint_jump = 0

" Hold cursor in current window
" when quickfix is open
let g:pymode_lint_hold = 0

" Place error signs
let g:pymode_lint_signs = 1

" Maximum allowed mccabe complexity
let g:pymode_lint_mccabe_complexity = 8

" Minimal height of pylint error window
let g:pymode_lint_minheight = 3

" Maximal height of pylint error window
let g:pymode_lint_maxheight = 6

" Load rope plugin
let g:pymode_rope = 1

" Auto create and open ropeproject
let g:pymode_rope_auto_project = 1

" Enable autoimport
let g:pymode_rope_enable_autoimport = 1

" Auto generate global cache
let g:pymode_rope_autoimport_generate = 1

let g:pymode_rope_autoimport_underlineds = 0

let g:pymode_rope_codeassist_maxfixes = 10

let g:pymode_rope_sorted_completions = 1

let g:pymode_rope_extended_complete = 1

let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"]

let g:pymode_rope_confirm_saving = 1

let g:pymode_rope_global_prefix = "<C-x>p"

let g:pymode_rope_local_prefix = "<C-c>r"

let g:pymode_rope_vim_completion = 1

let g:pymode_rope_guess_project = 1

let g:pymode_rope_goto_def_newwin = ""

let g:pymode_rope_always_show_complete_menu = 0

" Enable python folding
let g:pymode_folding = 1

" Enable python objects and motion
let g:pymode_motion = 1

" Auto fix vim python paths if virtualenv enabled
let g:pymode_virtualenv = 1

" Additional python paths
let g:pymode_paths = []

" Load breakpoints plugin
let g:pymode_breakpoint = 1

" Key for set/unset breakpoint
let g:pymode_breakpoint_key = '<leader>b'

" Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 1

" Enable pymode indentation
let g:pymode_indent = 1

" Set default pymode python options
let g:pymode_options = 1

" Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1

" Enable all python highlightings
let g:pymode_syntax_all = 1

" Highlight "print" as function
let g:pymode_syntax_print_as_function = 0

" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all

" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all

" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all

" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all

" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all

" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all

" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

" For fast machines
let g:pymode_syntax_slow_sync = 0
