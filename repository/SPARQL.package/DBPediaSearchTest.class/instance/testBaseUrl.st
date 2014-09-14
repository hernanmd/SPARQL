tests-private
testBaseUrl

	self assert: (sparqlClient baseUrl isKindOf: String).
	self assert: sparqlClient baseUrl notEmpty.
	self assert: (sparqlClient baseUrl beginsWith: 'http:')