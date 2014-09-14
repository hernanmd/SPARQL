accessing
setJsonFormat
	" Append format parameter to retrieve results in JSON "

	self queryStream nextPutAll: '&format=json'