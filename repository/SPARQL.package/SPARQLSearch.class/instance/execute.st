accessing
execute
	" Execute and answer the retrieved contents "

	^ (ZnEasy get: self queryStream contents) contents