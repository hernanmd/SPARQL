tests-accessing
testSetJsonFormat

	sparqlClient setJsonFormat.
	self assert: (sparqlClient query includesSubstring: '&format=json').