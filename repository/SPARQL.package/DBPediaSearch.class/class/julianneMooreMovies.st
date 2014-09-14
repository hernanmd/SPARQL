examples
julianneMooreMovies
	" self julianneMooreMovies 
	From: http://stackoverflow.com/questions/17056476/dbpedia-sparql-query-us-universities?rq=1 "

	^ DBPediaSearch new 
		setJsonFormat;
		timeout: 5000;
		query: 'SELECT DISTINCT ?filmName WHERE {
  ?film foaf:name ?filmName .
  ?film dbpedia-owl:starring ?actress .
  ?actress foaf:name ?name.
  FILTER(contains(?name, "Julianne"))
  FILTER(contains(?name, "Moore"))
}';
		execute