<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style1.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body bgcolor="LightGrey">
	<h3 align="center"><b><u>Home Page</u></b></h3>
	<div align="center" >
	<table border='2px' height='400px' width='300px' bgcolor="rgb(60, 179, 113)">
		<tr><td>
		
		Today's date : <%= (new java.util.Date()).toLocaleString()%><br><br>
		
		<form action="login.jsp" method="post">
			<b><i>Already Existing User :</i></b> <input type="submit" value="Login">
		</form><br><br>
		<form action="register.jsp" method="post">
			<b><i>New User :</i></b> <input type="submit" value="Register" style="font-size:10pt; input:focus{background-color:#40E0D0}">
		</form>
		</td>
		</tr>
	</table>
	</div>
</body>
</html>