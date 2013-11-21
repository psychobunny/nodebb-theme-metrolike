define(function () {
	var	Category = {};

	Category.init = function() {
		var	cid = templates.get('category_id'),
			room = 'category_' + cid,
			loadingMoreTopics = false;

		app.enter_room(room);

		ajaxify.register_events([
			'event:new_topic'
		]);

		socket.on('event:new_topic', Category.onNewTopic);

		$(window).off('scroll').on('scroll', function (ev) {
			var bottom = ($(document).height() - $(window).height()) * 0.9;

			if ($(window).scrollTop() > bottom && !loadingMoreTopics) {
				Category.loadMoreTopics(cid);
			}
		});
	};

	Category.onNewTopic = function(data) {
		var container = $('#category-container');

		var html = templates.prepare(templates['category'].blocks['topics']).parse({
			topics: [data]
		});

		container.append(html);

		container.timeago();
	}

	// next two functions need to be migrated - not sure if metrolike will do pagination or infinite scroll...
	Category.loadMoreTopics = function(cid) {
		loadingMoreTopics = true;
		socket.emit('api:category.loadMore', {
			cid: cid,
			after: $('#topics-container').children().length
		}, function (data) {
			if (data.topics.length) {
				Category.onTopicsLoaded(data.topics);
			}
			loadingMoreTopics = false;
		});
	}

	Category.onTopicsLoaded = function(topics) {

		var html = templates.prepare(templates['category'].blocks['topics']).parse({
			topics: topics
		}),
			container = $('#topics-container');

		jQuery('#topics-container, .category-sidebar').removeClass('hidden');
		jQuery('#category-no-topics').remove();

		container.append(html);

		$('#topics-container span.timeago').timeago();
	}

	return Category;
});