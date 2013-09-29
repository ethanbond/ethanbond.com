mongodb		= require 'mongodb'
mongoskin 	= require 'mongoskin'
db			= mongoskin.db 'mongodb://localhost/test'

module.exports = db