var metrolike = {};

jQuery('document').ready(function() {

	require.config({
		baseUrl: RELATIVE_PATH + "/css/assets/lib",
		waitSeconds: 3,
		paths: {
			"forum": 'forum'
		}
	});

	var button,
		postWindow = jQuery('#postWindow'),
		postTitle = jQuery('#postTitle'),
		postContent = jQuery('#postContent');

	$('#logout-link').on('click', app.logout);

	metrolike.openComposer = function(el, type) {
		button = jQuery(el);

		button.after(postWindow);
		postWindow.show();
		button.hide();

		var postButton = postWindow.find('.post');

		postButton.off('click');

		switch (type) {
			case 'topic' :
					postButton.on('click', postTopic);
					postTitle.css('visibility', 'visible');
					postTitle.focus();
				break;
			case 'reply' :
					postButton.on('click', replyTopic);
					postTitle.css('visibility', 'hidden');
					postContent.focus();
				break;
		}
	};

	metrolike.closeComposer = function(flush) {
		if (flush) {
			postTitle.val('');
			postContent.val('');
		}

		button.show();
		postWindow.hide();
	}


	function replyTopic() {
		var content = postContent.val(),
			topic_id = templates.get('topic_id');

		socket.emit('api:posts.reply', {
			'topic_id' : topic_id,
			'content' : content
		});

		metrolike.closeComposer(true);
	}

	function postTopic() {
		var title = postTitle.val(),
			content = postContent.val(),
			category_id = templates.get('category_id');

		socket.emit('api:topics.post', {
			'title' : title,
			'content' : content,
			'category_id' : category_id
		});

		metrolike.closeComposer(true);
	}


	var toast = jQuery('#toasterWindow .toast');

	app = app || {};
	app.alert = function(params) {
		var message = params.message,
			title = params.title,
			type = params.type;

		var alert = toast.clone();

		alert.appendTo('#toasterWindow').addClass(type).show();

		setTimeout(function() {
			alert.addClass('active');
		}, 50);

		setTimeout(function() {
			alert.removeClass('active');
			setTimeout(function() {
				alert.remove();
			}, 500);
		}, 2000);

		alert.find('.title').html(title);
		alert.find('.message').html(message);


	};
});