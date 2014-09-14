accessing
timeout: aNumber
	" Set the timeout for the query "

	self queryStream
		nextPutAll: '&timeout=';
		nextPutAll: aNumber asString