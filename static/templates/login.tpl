<div class="login container">
	<form role="form">
		<h2>Login to your account</h2>
		<div class="labels">
			<label for="username">[[login:username]]:</label><br />
			<label for="password">[[login:password]]:</label>
		</div>
		<div>
			<input class="form-control" type="text" placeholder="Enter Username" name="username" id="username" /><br />
			<input class="form-control" type="password" placeholder="Enter Password" name="password" id="password" /><br />
			<label><input type="checkbox"> [[login:remember_me]]</label><br />
			<button class="btn btn-primary" id="login" type="submit">[[login:login]]</button> &nbsp; <a href="/reset">[[login:forgot_password]]</a>
		</div>
		
		<input type="hidden" name="_csrf" value="{token}" id="csrf-token" />
	</form>
</div>