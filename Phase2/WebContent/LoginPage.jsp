<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="LightGrey">
	<%String s1=request.getParameter("username"); %><br>
	
	<div align="center">
	<b>Fill the below details</b><br><br>
	<table border='2px' bgcolor="rgb(60, 179, 113)" width='350px' height='400px'>
	<tr><td><br><br>
	<form action="finalRecord.jsp" method="post"> 
		<b>10th Marks percentage:</b><br> <input type="number" name="10percent" width:'100%'><br><br>
		<b>12th Marks percentage:</b><br> <input type="number" name="12percent"><br><br>
		<b>School Name:</b><br> <input type="text" name="school"><br><br>
		<b>Math marks/100:</b><br> <input type="number" name="maths"><br><br>
		<b>Chemistry marks/100:</b><br> <input type="number" name="chem"><br><br>
		<b>Physics marks/100:</b><br> <input type="number" name="phy"><br><br>
		<input type="submit" value="Submit"><br>
	</form>
	</td></tr>
	</table>
	</div>
</body>
</html>