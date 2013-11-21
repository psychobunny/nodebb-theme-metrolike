


<div class="home">
	<div class="container table">
		<div class="heading">
			<span>FORUM</span>
			<span>TOPICS</span>
			<span>LAST POST</span>
		</div>

		<!-- BEGIN categories -->	
		<div class="category row">
			<span>
				<div class="read {categories.badgeclass}">
					<a href="category/{categories.slug}">{categories.name}</a><br />
					<div>{categories.description}</div>
				</div>
			</span>
			<span>{categories.topic_count}</span>
			<span class="poster">
				<!-- BEGIN posts -->
				<div class="post">
				    Last post by <a href="user/{categories.posts.username}">{categories.posts.username}</a>
				    <a href="topic/{categories.posts.topicSlug}#{categories.posts.pid}"><img src="../css/assets/icon_topic_latest.gif" /></a><br />
				    <span class="timeago" title="{categories.posts.relativeTime}"></span>
				</div>
			    <!-- END posts -->
			</span>
		</div>
		<!-- END categories -->
	</div>
</div>