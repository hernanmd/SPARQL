initialization
initialize
	" Private - Initialize the receiver's stream "

	super initialize.
	self queryStream: (ReadWriteStream on: String new).
	self queryStream nextPutAll: self baseUrl.