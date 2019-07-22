" plugin config: has to be at the start of init.vim

" {
call plug#begin('~/.vim/plugged')
	" Make sure you use single quotes
	" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
	Plug 'junegunn/vim-easy-align'
	" Any valid git URL is allowed
	Plug 'https://github.com/junegunn/vim-github-dashboard.git'
	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
	" Using a non-master branch
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
	" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
	Plug 'fatih/vim-go', { 'tag': '*' }
	" Plugin options
	Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
	" Plugin outside ~/.vim/plugged with post-update hook
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	
	"Plug 'joshhartigan/vim-reddit'

	" Mine
	Plug 'https://github.com/tpope/vim-fugitive'
	Plug 'VundleVim/Vundle.vim'
	Plug 'bkad/CamelCaseMotion'
	Plug 'tpope/vim-fugitive'
	Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
"	Plug 'https://github.com/scrooloose/nerdtree'
	Plug 'https://github.com/vimwiki/vimwiki'
	"Plug 'l04m33/vlime', {'rtp': 'vim/'} 
	Plug 'majutsushi/tagbar'
	Plug 'vim-syntastic/syntastic'
	Plug 'wlangstroth/vim-racket'
	Plug 'rust-lang/rust.vim'
	Plug 'timonv/vim-cargo'
	Plug 'jez/vim-superman' " Superman - for better man pages
	Plug 'https://gitlab.com/HiPhish/repl.nvim/'
	" gdb :
	"Plug 'https://github.com/sakhnik/nvim-gdb' 
	"Plug 'https://github.com/vim-scripts/Conque-GDB'
	Plug 'junegunn/fzf.vim'
	Plug 'https://github.com/mbbill/undotree'

	Plug 'jpo/vim-railscasts-theme'
	"Plug 'vim-scripts/slimv.vim'
	"Plug 'l04m33/vlime'
	Plug 'https://github.com/junegunn/goyo.vim'
	Plug 'https://github.com/vim-scripts/info.vim'
	Plug 'https://github.com/LukeSmithxyz/vimling'
	
	Plug 'https://github.com/morhetz/gruvbox'
	
	" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" }

