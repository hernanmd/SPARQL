accessing
query: aSPARQLString
	" Append aSPARQLString to the receiver's query stream "

	self queryStream
		nextPutAll: '?query=';
		nextPutAll: self appendPrefixes;
		nextPutAll: aSPARQLString