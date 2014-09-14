examples
countryNeighboursExample
	" Query all country borderings "

	^ MannheimCIAFactBookSearch new
		query: 'SELECT ?country ?name ?neighbour
WHERE {
?country rdf:type factbook:Country .
?country rdfs:label ?name.
OPTIONAL{
  ?country factbook:landboundary ?neighbour.
 }}';
		setJsonFormat;
		execute
