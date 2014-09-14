accessing
setDebugOn
	" Append debug parameter "

	self queryStream nextPutAll: '&debug=on'