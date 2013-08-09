express 	= require 'express'
colors		= require 'colors'
dust		= require 'dustjs-linkedin'

app = express()

app.get '/', (req, res) ->
	res.send 'pleblah blah blahaseflsdkfdskfucking work'

app.listen 3000
console.log 'node.js listening on port 3000'
