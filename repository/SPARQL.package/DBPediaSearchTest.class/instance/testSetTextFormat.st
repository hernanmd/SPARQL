tests-accessing
testSetTextFormat

	sparqlClient setTextFormat.
	self assert: (sparqlClient query includesSubstring: '&format=text/plain').