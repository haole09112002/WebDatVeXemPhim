<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Document</title>
<style>
html, body {
	height: 100%;
	font-family: Mono;
	background: #000080;
	color: white;
	text-align: center;
}

h1 {
	height: 5%;
}

.global-container {
	height: 88%;
	display: flex;
	align-items: center;
	justify-content: center;
}

form {
	padding-top: 10px;
	font-size: 14px;
	margin-top: 30px;
}

.card-title {
	font-weight: 300;
}

.btn {
	font-size: 14px;
	margin-top: 20px;
}

.login-form {
	width: 330px;
	margin: 20px;
	height: 330px;
	background: #0000FF;
}

.sign-up {
	text-align: center;
	padding: 20px 0 0;
}

.alert {
	margin-bottom: -30px;
	font-size: 13px;
	margin-top: 20px;
}
</style>
</head>
<body>
	<h1>Wellcome to web admin book ticket</h1>
	<div class="global-container">
		<div class="card login-form">
			<div class="card-body">
				<h3 class="card-title text-center">Log in to Admin</h3>
				<div class="card-text">
					<form action="Admin" method="post">
						<div class="form-group">
							<label for="exampleInputUsername">Username</label> <input
								type="text" class="form-control form-control-sm"
								id="exampleInputUsername" aria-describedby="emailHelp" name="username">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control form-control-sm"
								id="exampleInputPassword1" name="password">
						</div>
						<button type="submit" class="btn btn-primary btn-block">Sign
							in</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>