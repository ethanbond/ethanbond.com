express 	= require 'express'
colors		= require 'colors'
dust		= require 'dustjs-linkedin'

app = express()

app.get '/', (req, res) ->
	res.send 'Hlpleasefuckingworklajdf test!'


app.listen 3000
console.log 'node.js listening on port 3000'
