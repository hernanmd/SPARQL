tests-accessing
testQueryStream

	self assert: (sparqlClient queryStream isKindOf: Stream).
