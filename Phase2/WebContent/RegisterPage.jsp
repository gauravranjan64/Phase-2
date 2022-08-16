<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="LightGrey">
<%String s1=request.getParameter("Full_Name");
  String s2=request.getParameter("password");
  String s3=request.getParameter("age");
  String s4=request.getParameter("branch");
  String s5=request.getParameter("aadhar");
%>
<h2 align="center">Welcome to Register Page</h2>
 <h3 align="center"><b><b>Welcome <%out.println("\t"+s1+", "); %>Verify your details</b></h3>
 <div align="center">
 	<table border="1px" bgcolor="rgb(60, 179, 113)" height="400px" width="400px">
	 	<tr><td>
	 	
	 	<%out.println("\nUsername: "+s1);%><br><br>
	 	<% out.println("\nPassword: "+s2);%><br><br>
	 	<% out.println("\nAge: "+s3);%><br><br>
	 	<%out.println("\nBranch: "+s4); %><br><br>
	 	<%out.println("\nAadhar Card: "+s5);%><br><br>
	 	<form action="LoginPage.jsp" method="post">
 			<input type="submit" value="Verified"><br>
 		</form>
	 	</td></tr>
 	</table>
 </div>
</body>
</html>