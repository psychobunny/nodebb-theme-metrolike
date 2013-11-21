<div class="container topic">
	<p class="breadcrumbs">
		<a href="/">[[global:home]]</a> <strong>‹</strong> <a href="/category/{category_slug}">{category_name}</a> <strong>‹</strong> {topic_name}
	</p>

	<div id="post-container">
		<!-- BEGIN main_posts -->
		<div class="postBody">
			<h2 class="title"><a href="#{main_posts.pid}">{topic_name}</a></h2>
			<span class="author">by <a href="../../users/{main_posts.username}">{main_posts.username}</a> <span class="timeago" title="{main_posts.relativeTime}"></span></span>
			<div class="content">{main_posts.content}</div>
		</div>
		<!-- END main_posts -->

		<!-- BEGIN posts -->
		<div class="postBody">
			<span class="author">by <a href="../../users/{posts.username}">{posts.username}</a> <span class="timeago" title="{posts.relativeTime}"></span></span>
			<div class="content">{posts.content}</div>
		</div>
		<!-- END posts -->
	</div>
	<button onclick="metrolike.openComposer(this, 'reply');">[[topic:reply]]</button>
</div>

<input type="hidden" template-variable="topic_id" value="{topic_id}" />