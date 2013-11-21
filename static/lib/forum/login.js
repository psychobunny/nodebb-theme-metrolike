define(function() {
	var	Login = {};

	Login.init = function() {
		$('#login').on('click', function() {
			var loginData = {
				'username': $('#username').val(),
				'password': $('#password').val(),
				'_csrf': $('#csrf-token').val()
			};

			$.ajax({
				type: "POST",
				url: RELATIVE_PATH + '/login',
				data: loginData,
				success: function(data, textStatus, jqXHR) {
					if (!data.success) {
						$('#login-error-notify').show();
					} else {
						$('#login-error-notify').hide();

						if(!app.previousUrl) { app.previousUrl = '/'; }

						if(app.previousUrl.indexOf('/reset/') != -1)
							window.location.replace(RELATIVE_PATH + "/?loggedin");
						else
							window.location.replace(app.previousUrl + "?loggedin");

						app.loadConfig();
					}
				},
				error: function(data, textStatus, jqXHR) {
					$('#login-error-notify').show();
				},
				dataType: 'json',
				async: true,
				timeout: 2000
			});

			return false;
		});

		$('#login-error-notify button').on('click', function() {
			$('#login-error-notify').hide();
			return false;
		});

		document.querySelector('#content input').focus();
	};

	return Login;
});
