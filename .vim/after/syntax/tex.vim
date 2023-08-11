syn region Frame start="\\begin{frame}" end="\\end{frame}" keepend transparent fold

function FoldText()
	let line = getline(v:foldstart+1)
	let sub = substitute(line, '\\frametitle', '', 'g')
	let num = v:foldend - v:foldstart + 1
	return " - [" . num . "]" . sub
endfunction

set foldtext=FoldText()
