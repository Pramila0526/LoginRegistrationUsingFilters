<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="Registration" method="post">
		<table
			style="background-color: lightcoral; margin-left: 20px; margin-top: 20px">
			<tr>
				<td><h3 style="color: darkslategray;">Registration Page!</h3></td>
			</tr>
			
			
			<tr>
				<td>Enter First Name</td>
				<td><input type="text" name="firstname"></td>
			</tr>
			
			<tr>
				<td>Enter Last Name</td>
				<td><input type="text" name="lastname" ></td>
			</tr>
			
			<tr>
				<td>Enter User Name</td>
				<td><input type="text" name="username" ></td>
			</tr>
			<tr>
				<td>Enter Age</td>
				<td><input type="text" name="age"></td>
			</tr>
			
			<tr>
				<td>Enter Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="Submit" value="Register"></td>
			</tr>
		</table>
	</form>
</body>
</html>