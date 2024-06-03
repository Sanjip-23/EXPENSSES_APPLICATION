<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="Components/Bootstrap.jsp" %>
</head>
<body>

<% User user = (User)session.getAttribute("UserData"); 
if(user == null){
	response.sendRedirect("login.jsp");
}
else{
%>
<%@ include file="Components/HomeNavBar.jsp" %>
<h1 style="text-align: center;">WELCOME TO HOME PAGE</h1>

<a href="addSalary.jsp" class="btn btn-dark text-decoration-none">ADD SALARY</a>
<a href="addExpensses.jsp" class="btn btn-dark text-decoration-none">ADD EXPENSSES</a>

 <% String msg = (String) session.getAttribute("addExp"); 
						if(msg != null){
						%>
						<p class = "text-center text-success fs-4"> <%= msg %></p>
						
						<%
						session.removeAttribute("addExp");
						}
}
						%>
					



</body>
</html>