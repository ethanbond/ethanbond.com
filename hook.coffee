gith = require('gith').create 9001
execFile = require('child_process').execFile

gith({repo: 'ethanbond/website'}).on 'all', (payload) ->
	if payload.branch is 'master':
		execFile '/hook.sh', (err, stdout, stderr) ->
			console.log 'exec complete'

