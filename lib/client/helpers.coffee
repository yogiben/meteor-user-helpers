Template.profileThumb.helpers
	profileThumbSrc: (_id) ->
		if typeof Meteor.users != 'undefined'
			if Meteor.users.findOne _id
				user = Meteor.users.findOne({_id:_id})
				if typeof user.profile.picture != 'undefined'
					picture = user.profile.picture

					if picture.indexOf('/') > -1
						picture
					else
						if typeof ProfilePictures != 'undefined' && ProfilePictures.findOne user.profile.picture
						picture = ProfilePictures.findOne user.profile.picture
						picture.url({store: 'thumbs'});
