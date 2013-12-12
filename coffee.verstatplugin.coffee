module.exports = (next) ->
	CoffeeScript = require 'coffee-script'
	
	@processor 'coffee',
		srcExtname: '.coffee'
		extname: '.js'
		compile: (file, options = {}, done) ->
			try
				done null, CoffeeScript.compile file.source, options
			catch err
				done err, null
	next()