<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
	</head>
	<body>
		<form action="/checkUser" method="post">
			<label for="username">Username:</label><br>
			<input type="text" id="username" name="username"><br>
			<label for="password">Password:</label><br>
			<input type="text" id="password" name="password"><br><br>
			<input type="submit" value="Submit">
		</form>
		<a href="/register"><button>Create user</button></a>
	</body>
</html>