<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="LightGrey">
	<b><h3  align="center"><u>Final Record Page</u></h3></b>
	<div align="center">
	<table border="1px" height="300px" width="350px" bgcolor="rgb(60, 179, 113)">
	<tr><td>
	<%
	String marks10=request.getParameter("10percent");
	String marks12=request.getParameter("12percent");
	String math=request.getParameter("maths");
	String chem=request.getParameter("chem");
	String phy=request.getParameter("phy");
	int a=Integer.parseInt(math);
	int b=Integer.parseInt(chem);
	int c=Integer.parseInt(phy);
	%>
	<b>Total Marks of 10th :</b><%out.println(" "+marks10);%><br><br>
	<b>Total Marks of 12th :</b> <%out.println(" "+marks12);%><br><br>
	<b>Total percent of  pcm :</b><%out.println(" "+(a+b+c)/3);%> <br><br>
	</td></tr>
	</table>
	</div>
</body>
</html>