<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header1.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="LightGrey"><br>
<div align='center'>
<table border='2px' bgcolor='LightYellow' width='300px' height='200px'>
	<tr><td><b>Details</b><br><br>
		<jsp:useBean id="ent" class="phase2.Jsp.Programs.EntryForm" scope="session"/>
		ID: <jsp:getProperty name="ent" property="id"/><br>
		Name: <jsp:getProperty name="ent" property="name"/><br>
		Age: <jsp:getProperty name="ent" property="age"/><br>
		Dept: <jsp:getProperty name="ent" property="dept"/><br>
	</td>
	</tr>
</table>
</div>	
</body>
</html>