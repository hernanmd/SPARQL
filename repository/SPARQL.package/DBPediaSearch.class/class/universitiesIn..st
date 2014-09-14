examples
universitiesIn: countryName
	" 
	self universitiesIn: 'France'.
	self universitiesIn: 'Chile'.
	"
	^ DBPediaSearch new 
		setJsonFormat;
		timeout: 5000;
		query: 'SELECT ?label ?homepage ?lat ?long ?endowment
WHERE {
  ?school a <http://schema.org/CollegeOrUniversity> ' , (self countryTripletsFor: countryName) , '
  OPTIONAL { ?school rdfs:label ?label .
             FILTER (LANGMATCHES(LANG(?label), ''en'')) }
  OPTIONAL { ?school foaf:homepage ?homepage }
  OPTIONAL { ?school geo:lat ?lat ; geo:long ?long }
  OPTIONAL { ?school dbpedia-owl:endowment ?endowment }
}';
		execute