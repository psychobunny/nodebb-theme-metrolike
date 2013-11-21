<div class="category container">
	<p class="breadcrumbs">
		<a href="/">[[global:home]]</a> ‹ {category_name}
	</p>

	<button class="{show_topic_button}" onclick="metrolike.openComposer(this, 'topic');">[[category:new_topic_button]]</button>

	<hr/>

	<div id="category-no-topics" class="{no_topics_message}">
		[[category:no_topics]]
	</div>


	<div id="category-container" class="table">
		<div class="heading">
			<span>TOPIC</span>
			<span>POSTS</span>
			<span>VIEWS</span>
			<span>LAST POST</span>
		</div>

		<!-- BEGIN topics -->	
		<div class="category row">
			<span>
				<div class="read {topics.badgeclass}">
					<a href="../../topic/{topics.slug}">{topics.title}</a><br />
					<div>{topics.description}</div>
				</div>
			</span>
			<span>{topics.postcount}</span>
			<span>{topics.viewcount}</span>
			<span class="poster">
			    Last post by <a href="./users/{topics.username}">{topics.username}</a>
			    <a href="../../topic/{topics.slug}#{topics.teaser_pid}"><img src="../../../css/assets/icon_topic_latest.gif" /></a><br />
			    <span class="timeago" title="{topics.relativeTime}"></span>
			</span>
		</div>
		<!-- END topics -->
	</div>
</div>

<input type="hidden" template-variable="category_id" value="{category_id}" />