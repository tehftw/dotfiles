" mappings.vim

" remapkeys mappings {
map <F8> :TagbarToggle<CR>
" remap colon and semicolon for easier use
" nnoremap: Normal
nnoremap ; :
noremap Y y$



""
" Text object motions
" noremap ( [
" noremap ) ]
" noremap ] )
" noremap [ (
" [ CTRL-D	
" [ CTRL-I	
" [#		
" ['		
" [(		
" [*		
" [`		
" [/		
" [D		
" [I		
" [P		
" [[		
" []		
" [c		
" [d		
" [f		
" [i		
" [m		
" [p		
" [s		
" [z		
" [{		
" [<MiddleMouse>	
" ] CTRL-D	
" ] CTRL-I	
" ]#		
" ]'		
" ])		
" ]*		
" ]`		
" ]/		
" ]D		
" ]I		
" ]P		
" ][		
" ]]		
" ]c		
" ]d		
" ]f		
" ]i		
" ]m		
" ]p		
" ]s		
" ]z		
" ]}		
" ]<MiddleMouse>	



" " switch brackets and parens to a more sensible position whilst writing
" inoremap ) ]
" inoremap [ (
" inoremap ( [
" inoremap ] )
" cnoremap ) ]
" cnoremap [ (
" cnoremap ( [
" cnoremap ] )



" oppa emacs style
" For Emacs-style editing on the command-line:
" start of line
cnoremap <C-a>		<Home>
inoremap <C-a>		<Home>
" back one character
cnoremap <C-b>		<Left>
inoremap <C-b>		<Left>
" delete character under cursor
cnoremap <C-d>		<Del>
inoremap <C-d>		<Del>
" end of line
cnoremap <C-e>		<End>
inoremap <C-e>		<End>
" forward one character
cnoremap <C-f>		<Right>
inoremap <C-f>		<Right>
" recall newer command-line
cnoremap <C-n>		<Down>
imap <C-n>		<Down>
" recall previous (older) command-line
cnoremap <C-p>		<Up>
inoremap <C-p>		<Up>
"" back one word
"cnoremap <M-b>	<S-Left>
"inoremap <M-b>	<S-Left>
"" forward one word
"cnoremap <M-f>	<S-Right>
"inoremap <M-f>	<S-Right>
"" hehe M-x
"inoremap <M-x>	<Esc>:
"nnoremap <M-x>	:
"nnoremap <M-h>	:help 


" moving through windows
noremap <C-k> :wincmd k<CR>
noremap <C-j> :wincmd j<CR>
noremap <C-h> :wincmd h<CR>
noremap <C-l> :wincmd l<CR>


" CDC = Change to Directory of Current file
command Cdc cd %:p:h


" https://vim.fandom.com/wiki/Search_for_visually_selected_text
" Search for selected text, forwards or backwards.
vnoremap <Leader>/ :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <Leader>? :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <Leader>v/ y/<C-R>"<CR>
vnoremap <Leader>v? y/<C-R>"<CR>


" tabcomplete {
	"Use TAB to complete when typing words, else inserts TABs as usual.
	"Uses dictionary and source files to find matching words to complete.
	"http://vim.wikia.com/wiki/Autocomplete_with_TAB_when_typing_words
	"See help completion for source,
	"Note: usual completion is on <C-n> but more trouble to press all the time.
	"Never type the same word twice and maybe learn a new spellings!
	"Use the Linux dictionary when spelling is in doubt.
	"Window users can copy the file to their machine.
	function! Tab_Or_Complete()
	  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
		return "\<C-N>"
	  else
		return "\<Tab>"
	  endif
	endfunction
	:inoremap <S-Tab> <C-R>=Tab_Or_Complete()<CR>
	:set dictionary="/usr/dict/words"
" }


" emacs-ish-esque save with ctrl+s
noremap <C-s> :write<CR>
imap <C-s> <Esc>:write<CR>a


"
map <space> <Leader>
map <Leader>r BrowseToggle()<CR>


" list registers and get hotkey to paste:
map <leader>" :registers<CR>:normal "
map <leader>:" :registers<CR>:
map <leader>n :normal


"
map <leader>gl :set background=light<CR>
map <leader>gd :set background=dark<CR>




" set working directory to directory of current file
map <leader>cd :cd %:p:h<CR>


" makes dot "." work with visually selected lines by default(only in visual mode):
xnoremap . :norm.<CR> 


" go back one tab
noremap gb gT




" helpful buffer When F5 is pressed, a numbered list of file names is printed, and the user needs to type a single number based on the 'menu' and press Enter. The 'menu' disappears after choosing the number so it appears only when you need it <-- Happily infoanarchised from vim-wiki {
nnoremap <leader>b :buffers<CR>:b<Space>
nnoremap <leader>B :buffers<CR>:
nnoremap <F5> :buffers<CR>:b<Space>
nnoremap <F6> :buffers<CR>:
" }


command ToggleDeadKeys call ToggleDeadKeys()<CR>
command ToggleIPA call ToggleIPA()<CR>






" locate cursor: cursorline, cursorcolumn
map <leader>lc :set cursorline cursorcolumn<CR>








" neovim terminal {
   " <esc> to exit terminal
   tnoremap <Esc> <C-\><C-n>
" }

"  CamelCaseMotion {
	map <silent> <C-Right> <Plug>CamelCaseMotion_w
	map <silent> <C-Left> <Plug>CamelCaseMotion_b
" }

"" Ctrl+N for NerdTre
"map <C-n> :NERDTreeToggle<CR>




" macron

function AltLatin()
	let g:AltLatin=1
	map! <M-A> <C-k>A-
	map! <M-E> <C-k>E-
	map! <M-I> <C-k>I-
	map! <M-O> <C-k>O-
	map! <M-U> <C-k>U-
	map! <M-Y> <C-k>Y-
	map! <M-a> <C-k>a-
	map! <M-e> <C-k>e-
	map! <M-i> <C-k>i-
	map! <M-o> <C-k>o-
	map! <M-u> <C-k>u-
	map! <M-y> <C-k>y-
" Ā
" Ē
" Ī
" Ō
" Ū
" Ȳ
" ā
" ē
" ī
" ō
" ū
" ȳ
endfunction


function AltPolish()
	let g:AltPolish=1
	map! <M-A> Ą
	map! <M-C> Ć
	map! <M-E> Ę
	map! <M-L> Ł
	map! <M-N> Ń
	map! <M-O> Ó
	map! <M-S> Ś
	map! <M-X> Ź
	map! <M-Z> Ż
	map! <M-a> ą
	map! <M-c> ć
	map! <M-e> ę
	map! <M-l> ł
	map! <M-n> ń
	map! <M-o> ó
	map! <M-s> ś
	map! <M-x> ź
	map! <M-z> ż
endfunction


function AltGerman()
	let g:AltGerman=1
	map! <M-A> Ä
	map! <M-O> Ö
	map! <M-U> Ü
	map! <M-S> ẞ
	map! <M-a> ä
	map! <M-o> ö
	map! <M-u> ü
	map! <M-s> ß
endfunction

function AltGreek()
	let g:AltGreek=1
	map! <M-q> ψ
	map! <M-w> ω
	map! <M-e> ε
	map! <M-r> ρ
	map! <M-t> τ
	map! <M-y> η
	map! <M-u> υ
	map! <M-i> ι
	map! <M-o> ο
	map! <M-p> π
	map! <M-a> α
	map! <M-s> σ
	map! <M-d> δ
	map! <M-f> ϕ
	map! <M-g> γ
	map! <M-h> θ
	map! <M-i> ι
	map! <M-J> ∫
	map! <M-k> κ
	map! <M-l> λ
	map! <M-z> ζ
	map! <M-x> χ
	map! <M-c> ξ
	map! <M-b> β
	map! <M-n> ν
	map! <M-m> μ
	map! <M-j> ∫
	" biggies
	map! <M-Q> Ψ
	map! <M-W> Ω
	map! <M-E> Ε
	map! <M-R> Ρ
	map! <M-T> Τ
	map! <M-Y> Η
	map! <M-U> Υ
	map! <M-I> Ι
	map! <M-O> Ο
	map! <M-P> Π
	map! <M-A> Α
	map! <M-,> Σ
	map! <M-lt> Σ
	map! <M-D> Δ
	map! <M-F> Φ
	map! <M-G> Γ
	map! <M-H> Θ
	map! <M-I> Ι
	map! <M-J> ∫
	map! <M-K> Κ
	map! <M-L> Λ
	map! <M-Z> Ζ
	map! <M-X> Χ
	map! <M-C> Ξ
	map! <M-B> Β
	map! <M-N> Ν
	map! <M-M> Μ
endfunction



function AltMath()
	let g:AltGreek=1
	map! <M-q> ψ
	map! <M-w> ω
	map! <M-e> ε
	map! <M-r> ρ
	map! <M-t> τ
	map! <M-y> η
	map! <M-u> υ
	map! <M-i> ι
	map! <M-p> π
	map! <M-a> α
	map! <M-s> σ
	map! <M-d> δ
	map! <M-f> ϕ
	map! <M-g> γ
	map! <M-h> θ
	map! <M-i> ι
	map! <M-J> ∫
	map! <M-k> κ
	map! <M-l> λ
	map! <M-z> ζ
	map! <M-x> χ
	map! <M-c> ξ
	map! <M-b> β
	map! <M-n> ν
	map! <M-m> μ
	" biggies
	map! <M-Q> Ψ
	map! <M-W> Ω
	map! <M-P> Π
	map! <M-,> Σ
	map! <M-lt> Σ
	map! <M-D> Δ
	map! <M-F> Φ
	map! <M-G> Γ
	map! <M-H> Θ
	map! <M-I> ∫
	map! <M-K> Κ
	map! <M-L> Λ
	map! <M-X> Χ
	map! <M-C> Ξ
endfunction


function RemapSwapUnderscoreMinus()
	inoremap - _
	inoremap _ -
endfunction
command RemapSwapUnderscoreMinus call RemapSwapUnderscoreMinus()

command RemapForC call RemapSwapUnderscoreMinus()

function LangmapGreek()
	set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz
endfunction


command AltLatin call AltLatin()
command AltPolish call AltPolish()
command AltGerman call AltGerman()
command AltGreek call AltGreek()
command AltMath call AltMath()

command LangmapGreek call LangmapGreek()
