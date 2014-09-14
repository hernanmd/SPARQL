accessing
setHtmlFormat
	" Append format parameter to retrieve results in HTML "

	self queryStream nextPutAll: '&format=text/html'