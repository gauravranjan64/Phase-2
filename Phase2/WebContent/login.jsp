<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="LightGrey"><br><br>
	<div align="center">
	<table border='2px' bgcolor="rgb(60, 179, 113)" width='350px' height='300px'>
	<tr><td><br><br>
	<form action="LoginPage.jsp" method="post"> 
		<b>Student User:</b><br> <input type="text" name="username"><br><br>
		<b>Password:</b><br> <input type="password" name="password"><br><br>
		<input type="submit" value="LogIn">
	</form>
	</td></tr>
	</table>
	</div>
</body>
</html>
