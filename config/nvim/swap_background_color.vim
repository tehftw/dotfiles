" swap background {
function ToggleBackground()
	if &background == "light"
		set background=dark
	else
		set background=light
	endif
endfunction

command ToggleBackground call ToggleBackground()


