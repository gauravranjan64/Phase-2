<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String s1=request.getParameter("a");
	String s2=request.getParameter("b");
	String s3=request.getParameter("c");
	String s4=request.getParameter("d");
	int a=Integer.parseInt(s1);
	int b=Integer.parseInt(s2);
	int c=Integer.parseInt(s3);
	int d=Integer.parseInt(s4);
%>
<%
out.println("Addition of: "+a+" "+b+" "+c+" "+d);
%>
<br>
<% 
out.println("\n"+(a+b+c+d));
%>



</body>
</html>