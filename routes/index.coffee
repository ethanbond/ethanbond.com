module.exports =
	index: (req, res)->
		res.render "../views/index",	#views/newproject.dust
			metadata:
				title: "Ethan Bond | Product Design & Computer Science"
				description: "The personal portfolio of designer and software engineer Ethan Bond."
				author: "Ethan Bond"
	projects: (req, res) ->
		res.render "../views/projects",
			metadata:
				title: "Projects | Ethan Bond"
				description: "My recent projects and experiments in user inteface, user experience, and product design. There may be a bit of code floating around here, too, if you look hard enough!"
				author: "Ethan Bond"
	project: (req, res) ->
		projectID = req.params.projectID
		res.render "../views/project/" + projectID
	thoughts: (req, res) ->
		res.render "../views/thoughts",
			metadata:
				title: "Thoughts | Ethan Bond"
				description: "Some thoughts on design, programming, usability, and maybe some miscellaneous thoughts. These are written mostly for myself, but other designers, programmers, and laypeople will hopefully find them interesting."
				author: "Ethan Bond"
	thought: (req, res) ->
		thoughtID = req.params.thoughtID
		res.render "../views/thoughts/article",
			metadata:
				title: thoughtID + " | Ethan Bond"
				description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel, inventore, facilis tenetur amet nihil laborum cumque nulla ratione. Aspernatur omnis dignissimos optio voluptas vero esse blanditiis voluptatibus perspiciatis maxime sapiente."
				author: "Ethan Bond"
			article:
				title: "Article title"
				introduction: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, cumque, optio cupiditate ducimus natus consequatur perspiciatis totam assumenda odit enim adipisci explicabo sunt quisquam maxime ullam velit quasi commodi nulla."
				banner: "http://31.media.tumblr.com/d18f7686c103d4674b5b510e13ad542f/tumblr_mtavhdvESW1st5lhmo1_1280.jpg"
				paragraphs: [
					"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, aut eius placeat et nostrum fugit. Animi, dolores, vero, laudantium, modi soluta enim molestias laborum rem odit laboriosam consectetur ducimus architecto."
					,"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, nemo, dicta, sequi ipsum odio corrupti nesciunt ullam necessitatibus cumque voluptatibus praesentium vero sed rem possimus non laborum tenetur dolores voluptates."
					,"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, deserunt exercitationem odio ex neque quibusdam unde. Consequatur, sit, vero, nisi veniam alias officiis nihil iusto molestias esse explicabo labore dolor?"
				]

	resources: (req, res) ->
		res.render "../views/resources/",
			metadata:
				title: "Resources | Ethan Bond"
				description: "An always-growing index of design and development resources I've built for myself and others. Sketch.app templates, grid systems, guides, and frameworks."
				author: "Ethan Bond"
	resource: (req, res) ->
		resourceID = req.params.resourceID
		res.render "../views/resources/" + resourceID



	jumpToTopic: (req, res) ->
		area = req.params.area
		id = req.params.id
		topic = req.params.topic
		res.send "Area: " + area + "    Id: " + id + "    Topic: " + topic
