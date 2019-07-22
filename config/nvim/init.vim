" tehftw's init.vim
" Wed Feb 21 23:23:08 STD 2018

" TODO: 
" add autosave after leaving insert - OR NOT
"   highlight whitespace at the end of line
" do stuff about buffering: ergonomics of using buffers and tabs and
"   windows. partially done with better mappings for bufferlist, and `gb` to
"   go back a tab
" do something about sessions - easily saving and getting back to them
" switch background color with some command

" reddit said that 'set nocompatible' is unneeded


" runtime {
runtime plugs.vim

" microplugins {
	runtime browsemode.vim
	runtime runshellcommand.vim " does not work - no idea why
	runtime swap_background_color.vim
	runtime daily_edit.vim
" }

runtime environment.vim
runtime mappings.vim
" }

set t_Co=16
colorscheme tehco
set titlestring=nvim\ %t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
set langmap=([,)],[(,])


" in order to properly use rebound '()' '[]'



function NightMode()
	colorscheme default
	set background=dark
	colorscheme tehco
endfunction

function DayMode()
	colorscheme default
	set background=light
	colorscheme tehco-bright
endfunction


command DayMode call DayMode()
command NightMode call NightMode()




" nerdtree {
"	" open NerdTree when opening a directory with ViM
"	autocmd StdinReadPre * let s:std_in=1
"	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"
	" show hidden(dot files) by default
	let NERDTreeShowHidden=1
" }






