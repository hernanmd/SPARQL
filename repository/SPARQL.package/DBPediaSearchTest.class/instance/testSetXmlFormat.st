tests-accessing
testSetXmlFormat

	sparqlClient setXmlFormat.
	self assert: (sparqlClient query includesSubstring: '&format=text/xml').