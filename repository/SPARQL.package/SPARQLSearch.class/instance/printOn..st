printing
printOn: aStream
	" Private - See superimplementor's comment "
	
	super printOn: aStream.
	aStream 
		nextPut: $[;
		nextPutAll: queryStream contents asString;
		nextPut: $]