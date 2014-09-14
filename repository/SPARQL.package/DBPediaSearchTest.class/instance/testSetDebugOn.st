tests-accessing
testSetDebugOn

	sparqlClient setDebugOn.
	self assert: (sparqlClient query includesSubstring: '&debug=on').