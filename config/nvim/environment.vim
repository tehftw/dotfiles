

" environment {
	set clipboard=unnamedplus " I also had to install 'xsel' and 'xclip' to have the system clipboard be default register
	set mouse=a      " enable mouse in all modes

	set textwidth=79

	set wildmenu     " nice menu with suggestions for command arguments
	set wildmode=longest:full

	"get feedback while using ':%s/foo/bar/'
	set inccommand=split

	set scrolloff=2


	" keep undo history across sessions by storing it in a file {
		set undofile                " Save undo's after file closes
		set undodir=$HOME/.vim/undo " where to save undo histories
		set undolevels=1000         " How many undos
		set undoreload=10000        " number of lines to save for undo
		" https://www.reddit.com/r/vim/comments/383gye/vims_speed_is_not_really_the_point/crsg0f6/
		" https://stackoverflow.com/questions/5700389/using-vims-persistent-undo
	" }
" set autochdir " current dir determined by current buffer



	set statusline=%F%y%m%r%h%w[%l/%L:%v]
	" set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%l,%v]
	"                | | | | |  |   |      |  |     |    |
	"                | | | | |  |   |      |  |     |    +-- current column
	"                | | | | |  |   |      |  |     +-- current line
	"                | | | | |  |   |      |  +-- current % into file
	"                | | | | |  |   |      +-- current syntax
	"                | | | | |  |   +-- current fileformat
	"                | | | | |  +-- number of lines
	"                | | | | +-- preview flag in square brackets
	"                | | | +-- help flag in square brackets
	"                | | +-- readonly flag in square brackets
	"                | +-- rodified flag in square brackets
	"                +-- full path to file in the buffer


	" listchars {
		"set listchars=tab:--,trail:.,eol:¬,extends:>,precedes:<
		set listchars=tab:»-,trail:·,extends:»,precedes:«
		set list
	" }


	set nofoldenable "disable folding
"	set number
"	set relativenumber
	":highlight Search ctermbg=Blue ctermfg=Black
	"autocmd InsertEnter * highlight CursorLine cterm=bold
	"autocmd InsertLeave * highlight CursorLine cterm=underline
	syntax on " syntax highlighting
	filetype on " use the type of file
	" set ruler " show linecount always
	set hlsearch " highlights after searching
	set title " display titre of file
	set ignorecase " Smart searching case
	set smartcase
	set wildignorecase " opens files case-insensitively
	"set cursorline " highlight the line cursor is on


	" tabkey, formatting {
		set smarttab
		set autoindent " indent same level as last line
		set tabstop=4 " display tabs as this many spaces
		set softtabstop=4 " lets backspace delete indent
		set shiftwidth=4 " displays tab as 4 spaces
		" set expandtab , no, keep tabs as is, you clown
		" /r/vim wiki and vim helpdoc says to keep tabstop=8, but i am
		" yet to understand what the issue is supposed to be with
		" having a different value?
	" }




"augroup CursorLine
"    au!
"    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"    au WinLeave * setlocal nocursorline
"augroup END

" } // environment


" AAAA Aaaa
