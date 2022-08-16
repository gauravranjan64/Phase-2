<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header1.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="LightGrey">
	<jsp:useBean id="ent" class="phase2.Jsp.Programs.EntryForm" scope="session"/>
	<jsp:setProperty property="*" name="ent" />
	
	Record:<br>
	Id: <jsp:getProperty property="id" name="ent"/><br>
	Name: <jsp:getProperty property="name" name="ent"/><br>
	Age: <jsp:getProperty property="age" name="ent"/><br>
	Depatrment: <jsp:getProperty property="dept" name="ent"/><br>
	<br><br>
	<a href="fetch.jsp">Fetch data</a><br>
	<a href="fetch1.jsp">LogOut</a><br><br>
	<jsp:include page="footer.jsp"/>
</body>
</html>