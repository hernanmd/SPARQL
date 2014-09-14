tests-accessing
testTimeout

	sparqlClient timeout: 200.
	self assert: (sparqlClient query includesSubstring: '&timeout=200').