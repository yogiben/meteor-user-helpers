Template.registerHelper 'niceName', (_id)->
	if _id
		user = Meteor.users.findOne _id
	else
		user = Meteor.user()

	if user and user.username
		user.username
	else if user.profile  and user.profile.firstName
		user.profile.firstName
	else if user.emails[0].address
		user.emails[0].address
	else
		'A user'