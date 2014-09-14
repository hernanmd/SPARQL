examples
dreamTheaterGenre
	" self dreamTheaterGenre "

	^ DBPediaSearch new 
		setXmlFormat;
		setDebugOn;
		timeout: 5000;
		query: 'SELECT DISTINCT ?genreLabel
WHERE {
	?resource dbpprop:genre ?genre.
	?resource rdfs:label "Dream Theater"@en.
	?genre rdfs:label ?genreLabel
	FILTER (lang(?genreLabel)="en")
}
 LIMIT 100';
		execute