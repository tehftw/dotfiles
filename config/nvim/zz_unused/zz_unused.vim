

" move to prev tab with <gb> <ctrl+tab> {
noremap  <g><b> :tabprevious<CR>
inoremap <g><b> :tabprevious<CR>
cnoremap <g><b> :tabprevious<CR>
noremap <C-S-Tab> :<C-U>tabNext<CR>
inoremap <C-S-Tab> <C-\><C-N>:tabNext<CR>
cnoremap <C-S-Tab> <C-U>:tabNext<CR>
" }


" swap '(' with '['   --- no longer needed because I changed keyboard layout {
noremap! ( [
noremap! ) ]
noremap! [ (
noremap! ] )
noremap ( [
noremap ) ]
noremap [ (
noremap ] )
tnoremap ( [
tnoremap ) ]
tnoremap [ (
tnoremap ] )
" }


" force saving files that require root permission {
cnoremap w!! w !sudo tee > /dev/null %
" }




" SYNTASTIC {
    " I will probably remove that junk
    "set statusline+=%#warninggmsg#
    "set statusline+=%#{SyntasticStatuslineFlag()}#
    "set statusline+=%*
    " JUST STAY IN PASSIVE MODE YOU FUCKER
    let g:syntastic_mode_map = {
        \ "mode": "passive",
        \ "active_filetypes": ["ruby"],
        \ "passive_filetypes": ["puppet"] }
    let g:syntastic_always_populate_loc_list = 1
    " auto open, auto close 
    let g:syntastic_auto_loc_list = 1
    " don't check on save&close
    let g:syntastic_check_on_wq = 0
    " don't auto-check on saving nor on open
    let g:syntastic_check_on_open = 0
    " command to check:
    :command Sch SyntasticCheck
" }


" nerdtree {
	" automatically open NerdTree
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" }



