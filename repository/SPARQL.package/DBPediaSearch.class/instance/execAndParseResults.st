accessing
execAndParseResults
	" Execute and parse the retrieved contents. Answer a <Dictionary> with bindings "

	^ ((NeoJSONReader fromString: self execute) at: #results) at: #bindings