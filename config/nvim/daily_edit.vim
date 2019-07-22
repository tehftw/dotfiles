

function DailyEdit()
	edit ~/txt/daily/`date -I`.md
endfunction


command DailyEdit call DailyEdit()
