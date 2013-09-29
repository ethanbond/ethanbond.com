express 	= require 'express'
colors		= require 'colors'
dust		= require 'dustjs-linkedin'
cons 		= require 'consolidate'
sass		= require 'node-sass'
mongodb		= require 'mongodb'
mongoskin 	= require 'mongoskin'

app 		= express()

routes 		= require './routes'
models		= require './models'
db 			= require './db'


app.set 'view engine', 'dust'
app.set 'template engine', 'dust'
app.engine 'dust', cons.dust

app.set 'views', __dirname + '/views'

app.use sass.middleware {
	src: __dirname + '/source',
	dest: __dirname + '/public',
	debug: true,
	outputStyle: 'nested'	
}

app.use express.bodyParser()
app.use express.static(__dirname + '/public')
app.use app.router



app.get '/thought/:thoughtID', routes.thought
app.get '/thoughts', routes.thoughts
app.get '/resource/:resourceID', routes.resource
app.get '/resources', routes.thoughts
app.get '/project/:projectID', routes.project
app.get '/projects', routes.thoughts

app.get '/dbtest', routes.dbtest


app.get '/', routes.index


app.listen 3000
console.log 'SUCCESS: Express listening on 3000'.green
console.log 'INFO:    Navigate to localhost:3000 in your browser'.cyan
console.log 'INFO:    Good luck!'.cyan
