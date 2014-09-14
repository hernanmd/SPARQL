examples
universitiesInUS
	" self universitiesInUS 
	From: http://stackoverflow.com/questions/17056476/dbpedia-sparql-query-us-universities?rq=1 "

	^ DBPediaSearch new 
		setJsonFormat;
		timeout: 5000;
		query: 'SELECT ?label ?homepage ?lat ?long ?endowment
WHERE {
  ?school a <http://schema.org/CollegeOrUniversity> 
  { ?school dbpedia-owl:country dbpedia:United_States }
  UNION
  { ?school dbpprop:country dbpedia:United_States }
  UNION 
  { ?school dbpprop:country "U.S."@en }
  UNION 
  { ?school dbpprop:country "United States"@en }

  OPTIONAL { ?school rdfs:label ?label .
             FILTER (LANGMATCHES(LANG(?label), ''en'')) }
  OPTIONAL { ?school foaf:homepage ?homepage }
  OPTIONAL { ?school geo:lat ?lat ; geo:long ?long }
  OPTIONAL { ?school dbpedia-owl:endowment ?endowment }
}';
		execute