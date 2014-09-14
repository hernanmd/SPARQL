accessing
setTextFormat
	" Append format parameter to retrieve results in plain text "

	self queryStream nextPutAll: '&format=text/plain'