tests-accessing
testQuery

	sparqlClient query: self sparqlString.
	self assert: (sparqlClient query includesSubstring: self sparqlString)