accessing
sparqlString

	^ 'SELECT DISTINCT ?concept
WHERE {
    ?s a ?concept .
} LIMIT 50'