<div class="register container">
	<form role="form" action="{relative_path}/register" method="post">
		<h2>Register a new account</h2>
		<div class="labels">
			<label for="email">[[register:email_address]]</label><br />
			<label for="username">[[register:username]]</label><br />
			<label for="password">[[register:password]]</label><br />
			<label for="password-confirm">[[register:confirm_password]]</label><br />
		</div>
		<div>
			<input type="text" placeholder="[[register:email_address_placeholder]]" name="email" id="email" /><br />
			<span id="email-notify"></span><br />

			<input type="text" placeholder="[[register:username_placeholder]]" name="username" id="username" /><br />
			<span id="username-notify"></span><br />

			<input type="password" placeholder="[[register:password_placeholder]]" name="password" id="password" /><br />
			<span id="password-notify"></span><br />

			<input type="password" placeholder="[[register:confirm_password_placeholder]]" name="password-confirm" id="password-confirm" /><br />
			<span id="password-confirm-notify"></span><br />
			
			<button id="register" type="submit">[[register:register_now_button]]</button>
		</div>

		<input type="hidden" name="_csrf" value="{token}" />
		<input id="referrer" type="hidden" name="referrer" value="" />
	</form>
</div>