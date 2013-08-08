var gith = require('gith').create(9001);
var execFile = require('child_process').execFile;

gith({
	repo: 'ethanbond/ethanbond.com'
}).on('all', function(payload){
	if(payload.branch === 'master'){
		execFile('hook.sh', function(error, stdout, stderr){
			console.log('Hook executed');
		});
	}
});
