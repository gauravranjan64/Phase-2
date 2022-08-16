<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="emp1" scope="session" value="${20000 }"/>
	<c:set var="emp2" scope="session" value="${14000 }"/>
	<c:set var="emp3" scope="session" value="${25000 }"/>
	<c:set var="emp4" scope="session" value="${10000 }"/>
	<c:set var="income" scope="session" value="${4000*4}"/>  

  
<c:choose>  
    <c:when test="${emp1 > 9000 && emp1 < 13000}">  
       <c:set var="newEmp1" scope="session" value="${emp1+5000}"/> 
         New Salary of emp1 :<c:out value="${newEmp1}"/>
    </c:when>  
    <c:when test="${emp1 > 13500 && emp1 < 21000}">  
        <c:set var="newEmp1" scope="session" value="${emp1+7000}"/> 
        New Salary of emp1 :<c:out value="${newEmp1}"/>
    </c:when> 
    <c:when test="${emp1 > 22000 && emp1 < 26000}">  
        <c:set var="newEmp1" scope="session" value="${emp1+9000}"/> 
        New Salary of emp1 :<c:out value="${newEmp1}"/>
    </c:when>
    <c:when test="${emp1 > 28000}">  
       <c:set var="newEmp1" scope="session" value="${emp1+10000}"/> 
        New Salary of emp1 :<c:out value="${newEmp1}"/>
    </c:when>     
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose> 
<br>
<c:choose>  
    <c:when test="${emp2 > 9000 && emp2 < 13000}">  
       <c:set var="newEmp2" scope="session" value="${emp2+5000}"/> 
         New Salary of emp2 :<c:out value="${newEmp2}"/>
    </c:when>  
    <c:when test="${emp2 > 13500 && emp2 < 21000}">  
        <c:set var="newEmp2" scope="session" value="${emp2+7000}"/> 
         New Salary of emp2 :<c:out value="${newEmp2}"/>
    </c:when> 
    <c:when test="${emp2 > 22000 && emp2 < 26000}">  
        <c:set var="newEmp2" scope="session" value="${emp2+9000}"/> 
         New Salary of emp2 :<c:out value="${newEmp2}"/>
    </c:when>
    <c:when test="${emp2 > 28000}">  
       <c:set var="newEmp2" scope="session" value="${emp2+10000}"/> 
         New Salary of emp2 :<c:out value="${newEmp2}"/>
    </c:when>     
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose>
<br>
<c:choose>  
    <c:when test="${emp3 > 9000 && emp3 < 13000}">  
       <c:set var="newEmp3" scope="session" value="${emp3+5000}"/> 
        New Salary of emp3 :<c:out value="${newEmp2}"/>
    </c:when>  
    <c:when test="${emp3 > 13500 && emp3 < 21000}">  
        <c:set var="newEmp3" scope="session" value="${emp3+7000}"/> 
        New Salary of emp3 :<c:out value="${newEmp3}"/>
    </c:when> 
    <c:when test="${emp3 > 22000 && emp3 < 26000}">  
        <c:set var="newEmp3" scope="session" value="${emp3+9000}"/> 
        New Salary of emp3 :<c:out value="${newEmp3}"/>
    </c:when>
    <c:when test="${emp3 > 28000}">  
       <c:set var="newEmp3" scope="session" value="${emp3+10000}"/> 
        New Salary of emp3 :<c:out value="${newEmp3}"/>
    </c:when>     
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose>
<br>
<c:choose>  
    <c:when test="${emp4 > 9000 && emp4 < 13000}">  
       <c:set var="newEmp4" scope="session" value="${emp4+5000}"/> 
        New Salary of emp4 :<c:out value="${newEmp4}"/>
    </c:when>  
    <c:when test="${emp4 > 13500 && emp4 < 21000}">  
        <c:set var="newEmp4" scope="session" value="${emp4+7000}"/> 
         New Salary of emp4 :<c:out value="${newEmp4}"/>
    </c:when> 
    <c:when test="${emp4 > 22000 && emp4 < 26000}">  
        <c:set var="newEmp4" scope="session" value="${emp4+9000}"/> 
         New Salary of emp4 :<c:out value="${newEmp4}"/>
    </c:when>
    <c:when test="${emp4 > 28000}">  
       <c:set var="newEmp4" scope="session" value="${emp4+10000}"/> 
         New Salary of emp4 :<c:out value="${newEmp4}"/>
    </c:when>     
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose>
<c:remove var="emp1"/>
<c:remove var="emp2"/>
<c:remove var="emp3"/>
<c:remove var="emp4"/>
<br>Emp1: <c:out value="${emp1 }"/>
	
</body>
</html>