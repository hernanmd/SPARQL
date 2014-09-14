examples
placesInCountry
	" self placesInCountry 
	From: http://stackoverflow.com/questions/15555430/sparql-get-list-of-places-in-one-country?rq=1 "

	^ DBPediaSearch new 
		setTextFormat;
		timeout: 3000;
		query: 'PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#>
PREFIX dbo: <http://dbpedia.org/ontology/>
SELECT *
WHERE  { 
  ?s a dbo:Place .
  ?s geo:lat ?lat .
  ?s geo:long ?long .
  ?s a ?type .
}
limit 10';
		execute