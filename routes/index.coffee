module.exports =
	index: (req, res)->
		res.render "../views/index",	#views/newproject.dust
			metadata:
				title: "Coffeegrounds"
				description: "This is a brand new Coffeegrounds project."