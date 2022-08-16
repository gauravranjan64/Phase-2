<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/phase2JavaFSD"  
     user="root"  password="root"/> 

<sql:update dataSource="${db}" var="count">  
INSERT INTO product VALUES (4,"Rohan",30);  
</sql:update>
--%>
<c:set var="Id" value="4"/>  
	<sql:update dataSource="${db}" var="count">  
		DELETE FROM student WHERE Id = ?  
	 <sql:param value="${Id}" />  
</sql:update> 
</body>
</html>