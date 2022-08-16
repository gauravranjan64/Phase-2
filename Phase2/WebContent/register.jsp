<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="LightGrey"><div align="center"><br><br>
	<table border='2px' bgcolor="rgb(60, 179, 113)" width='350px' height='300px'>
	<tr><td><br><br>

	<form action="RegisterPage.jsp" method="post">
			<b>Username :</b><br> <input name="Full_Name" type="text"><br><br>
			<b>Password :</b><br> <input name="password" type="password"><br><br>
			<b>Age :</b> <br><input type="number" name="age"><br><br>
			<b>Branch :</b> <br><input name="branch" type="text"><br><br>
			<b>Aadhar :</b> <br><input name="aadhar" type="number"><br><br>
			
			<input type="submit" value="Register"><br>
	</form>
	</td></tr>
	</table>
	</div>
</body>
</html>