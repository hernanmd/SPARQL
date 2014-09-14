tests-accessing
testExecute
	" ToDo: Test in a local server environment "
	
"	| results |
	
	results := dbPedia execute.
	self assert: results notNil.
	self assert: results notEmpty."