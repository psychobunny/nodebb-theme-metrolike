<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	{meta_tags}
	{link_tags}
	<script>var RELATIVE_PATH = "{relative_path}";</script>
	<!-- BEGIN pluginCSS -->
	<link rel="stylesheet" href="{pluginCSS.path}">
	<!-- END pluginCSS -->
	<script src="{relative_path}/socket.io/socket.io.js"></script>
	<script src="/socket.io/socket.io.js"></script>
	<script src="/vendor/jquery/js/jquery.js"></script>
	<script src="/vendor/jquery/js/jquery.timeago.js"></script>
	<script src="/vendor/requirejs/require.js"></script>
	<script src="/src/app.js"></script>
	<script src="/src/templates.js"></script>
	<script src="/src/ajaxify.js"></script>
	<script src="/src/translator.js"></script>
	<script src="/src/utils.js"></script>

	<script src="{relative_path}/css/assets/lib/metrolike.js"></script>

	<link rel="stylesheet" type="text/css" href="{relative_path}/css/assets/vendor/normalize.css">
	<link rel="stylesheet" type="text/css" href="{relative_path}/css/theme.css" />
</head>

<body>
<div id="container">
	<div class="header">
		<div class="container">
			<a href="/">
				<img class="{brand:logo:display}" src="{brand:logo}" />
				<div class="site-details">
					<h1>{title}</h1>
					<span>{description}</span>
				</div>
			</a>
		</div>
	</div>
	<div class="menu">
		<div class="container">
			<ul id="main-nav" class="nav navbar-nav">
					<li>
						<a href="/recent">[[global:header.recent]]</a>
					</li>
					<li class="nodebb-loggedin">
						<a href="/unread"><span id="numUnreadBadge" class="badge badge-inverse">0</span> [[global:header.unread]]</a>
					</li>
					<li>
						<a href="/users">[[global:header.users]]</a>
					</li>
					<li class="{adminDisplay}">

						<a href="/admin"><i class="icon-cogs"></i> [[global:header.admin]]</a>
					</li>
					<li class="visible-xs">
						<a href="/search">[[global:header.search]]</a>
					</li>
					<!-- BEGIN navigation -->
					<li class="{navigation.class}">
						<a href="{navigation.route}">{navigation.text}</a>
					</li>
					<!-- END navigation -->
					<li>
						<a href="/login">Login</a>
					</li>
					<li>
						<a href="/register">Register</a>
					</li>
					<li>
						<a id="logout-link">Logout</a>
					</li>
				</ul>
		</div>
	</div>

	<input id="csrf_token" type="hidden" template-variable="csrf" value="{csrf}" />
	<div id="content">
		