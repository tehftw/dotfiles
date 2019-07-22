" browsemode {
    " <j> and <k> to move both cursor and screen
let g:BrowseOn=0
let g:IsVimAsPager=0

function VimAsPager()
	let g:IsVimAsPager=1
" https://vim.fandom.com/wiki/Using_vim_as_a_syntax-highlighting_pager
	" Status line
	set nomodifiable
	set readonly
	" Key bindings.
	nmap b <C-B><C-G>
	nmap q :q!<CR>
	nmap <Up> <C-Y>
	nmap <Down> <C-E>
	nmap d <C-d>
	nmap u <C-u>
	nmap j <C-e>
	nmap k <C-y>
	" To type the following line, type *two* C-V's followed by two spaces. This
	" is how you map the spacebar.
	nmap ^V <C-F><C-G>
endfunction


function VimAsPagerNomore()
	let g:IsVimAsPager=1
" https://vim.fandom.com/wiki/Using_vim_as_a_syntax-highlighting_pager
	" Status line
	set modifiable
	set noreadonly
	" Key bindings.
	nmap b <C-B><C-G>
	nmap q :q!<CR>
	nmap <Up> <C-Y>
	nmap <Down> <C-E>
	nmap d <C-d>
	nmap u <C-u>
	nmap j <C-e>
	nmap k <C-y>
	" To type the following line, type *two* C-V's followed by two spaces. This
	" is how you map the spacebar.
	nmap ^V <C-F><C-G>
endfunction


command VimAsPager call VimAsPager()
command VimAsPagerNomore call VimAsPagerNomore()



function BrowseOn()
	let g:BrowseOn=1
	set scrolloff=9999
	echo "BrowseMode: 1"
endfunction


function BrowseOff()
	let g:BrowseOn=0
	noremap <Up> k
	noremap <Down> j
	noremap k k
	noremap j j
	set scrolloff=0
	echo "BrowseMode: 0"
endfunction


function BrowseToggle()
	if !g:BrowseOn
		call BrowseOn()
	else
		call BrowseOff()
	endif
endfunction

command BrowseToggle call BrowseToggle()
command BrowseOn call BrowseOn()
command BrowseOff call BrowseOff()

" }
"
"
"
"function BrowseOn()
"	let g:BrowseOn=1
"	noremap <Down> <C-e>j
"	noremap <Up> <C-y>k
"	noremap k <C-y>k
"	noremap j <C-e>j
"	echo "BrowseMode: 1"
"endfunction
"
"
"function BrowseOff()
"	let g:BrowseOn=0
"	noremap <Up> k
"	noremap <Down> j
"	noremap k k
"	noremap j j
"	echo "BrowseMode: 0"
"endfunction
"
"
"function BrowseToggle()
"	if !g:BrowseOn
"		call BrowseOn()
"	else
"		call BrowseOff()
"	endif
"endfunction
