Package.describe({
	summary: "Adds helpers for displaying profile pictures etc.",
	version: "0.0.1",
	git: "http://github.com/yogiben/meteor-user-helpers.git"
});

both = ['client','server']

Package.onUse(function(api) {
	api.versionsFrom('METEOR@0.9.2.2');

	api.use(
		[
			'coffeescript',
			'less',
			'templating',
		],
		both);

	 api.addFiles(
		[
			'lib/client/helpers.coffee',
			'lib/client/templates.html',
			'lib/client/templates.less'
		],
		'client')

});