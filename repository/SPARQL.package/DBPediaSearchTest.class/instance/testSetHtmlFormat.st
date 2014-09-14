tests-accessing
testSetHtmlFormat

	sparqlClient setHtmlFormat.
	self assert: (sparqlClient query includesSubstring: '&format=text/html').