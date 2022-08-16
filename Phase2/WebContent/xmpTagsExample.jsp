<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="xmltext">  
	<Employees>  
		<Employee>  
		  <name>Rajesh</name>  
		  <age>32</age>  
		  <dept>IT</dept>  
		</Employee>
	
		<Employee>  
		  <name>Vinay</name>  
		  <age>29</age>  
		  <dept>IT</dept>  
		</Employee>

		<Employee>  
		  <name>Ramesh</name>  
		  <age>28</age>  
		  <dept>HR</dept>  
		</Employee>
	
		<Employee>  
		  <name>Kamal</name>  
		  <age>36</age>  
		  <dept>IT</dept>  
		</Employee>  
	</Employees>  
	
</c:set> 

<x:parse xml="${xmltext}" var="output"/>
<x:choose>
	<x:when select="$output//Employees/Employee/dept='HR'">
	HR is Ramesh.
	</x:when>
	 
</x:choose>
Name is:
<x:out select="$output//Employees/Employee[3]/name"/>
	 


</body>
</html>