mongodb		= require 'mongodb'
mongoskin 	= require 'mongoskin'
db			= mongoskin.db 'mongodb://localhost/portfolio'

module.exports = 
	connection: db
	projects: db.collection 'projects'
	resources: db.collection 'resources'
	thoughts: db.collection 'thoughts'
