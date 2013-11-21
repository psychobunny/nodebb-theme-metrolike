define(function() {
	var	Topic = {};

	Topic.init = function() {
		var tid = templates.get('topic_id');


		jQuery('document').ready(function() {
			var room = 'topic_' + tid;

			app.enter_room(room);

			ajaxify.register_events(['event:new_post']);

			socket.on('event:new_post', app.createNewPosts);

			app.addCommasToNumbers();
		});
	};

	return Topic;
});