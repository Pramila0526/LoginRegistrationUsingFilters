<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	//response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	//response.setHeader("pragma","no-cache");
	//response.setHeader("Expires","0");
	response.setHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
	
	if(session.getAttribute("uname")==null)
	{
	response.sendRedirect("login.jsp");
	}
	%>
	Welcome ${uname}
	<form action="Logout" method="post">
	<table
			style="background-color: DarkSalmon; margin-left: 50px; margin-top: 50px">
			<tr>
				<td>
				<a href="usersList.jsp">
						<button type="button" name="Submit">Show Table</button>
				</a></td>
			</tr>
			<tr>
		<td>
		<a href="login.jsp">
						<button type="button">Logout</button>
				</a></td>
		</tr>
		
		</table>
	</form>
</body>
</html>