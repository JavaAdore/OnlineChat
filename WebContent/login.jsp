<html>

<head>
<title>Login Page</title>
</head>

<body>
	<table>
		<tr>
			<th>User Name</th>
		</tr>
		<tr>
			<td>amr</td>
		</tr>
		<tr>
			<td>mohab</td>
		</tr>
		<tr>
			<td>mohammed</td>
		</tr>
		<tr>
			<td>mustafa</td>
		</tr>

	</table>
	<center>
		<form action="loginServlet" method="post">

			<table>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="userName" /></td>
				</tr>
				<tr>
					<td>password</td>
					<td><input type="password" name="password" value="anyPassowrd" /></td>
				</tr>
				<tr>
				<td colspan="2">
				<center>	<input type="submit" name="login"  value="login" /></center>
					</td>
				</tr>
			</table>

		</form>
	</center>

</body>



</html>
