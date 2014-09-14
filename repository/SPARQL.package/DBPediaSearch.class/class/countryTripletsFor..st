examples
countryTripletsFor: countryName
	" Assume english countryName <String>"
	| country |
	
	country := countryName copyReplaceAll: ' ' with: '_'.
	^ '{ ?school dbpedia-owl:country dbpedia:', country , '}
  UNION
  { ?school dbpprop:country dbpedia:' , country , '}
  UNION 
  { ?school dbpprop:country "' , countryName , '"@en }'
