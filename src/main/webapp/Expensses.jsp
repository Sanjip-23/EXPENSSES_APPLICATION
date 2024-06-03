<%@page import="com.org.dto.Salary"%>
<%@page import="com.org.dao.UserDao"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dto.Expensses"%>
<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expensses</title>
<%@ include file="Components/Bootstrap.jsp" %>
</head>
<body>
<% User user = (User)session.getAttribute("UserData");
   if(user == null){
	   response.sendRedirect("login.jsp");
   }
   else{  %>
	   <%@ include file="Components/HomeNavBar.jsp" %>
	   
	  <%  int id = user.getId();
	UserDao dao = new UserDao();
	User u = dao.fetchUserById(id);
	List<Salary> list2 = u.getSalary();
	
	List<Expensses> exp = u.getExpensses();
	%>
	<div class="container border">
	   <div>
<a href="addExpensses.jsp" class ="btn btn-success text-decoration-none">ADD EXPENSSES</a>
	
	   </div>
	   <div class="row">
	   <table class="table">
	   
	    
		  <%float sal=0;
		  for(Salary s : list2){
			  sal = s.getUserSalary();
		  }
		  float p = 0;
	   for(Expensses e : exp){
		   p = p + e.getPrice();
		   } %>
		   <h3 style="color: green;">REMAINING MONEY FROM YOUR SALARY : <%= sal-p %></h3>
							<thead>
								<tr>
									<th>Name of Expensses</th>
									<th>Price</th>
									<th>Date</th>
									<th>Time</th>
									
								
	   <%
	   for(Expensses ex : exp ){
		%>
	   <tr>
								    <td><%= ex.getNameOfExpensses() %></td>
								   
								    <td><%= ex.getPrice() %></td>
								    <td><%= ex.getDate() %></td>
								    <td><%= ex.getTime() %></td>
								    
								</tr>
	   
	   <%}
   
	   }%>
</body>
</html>




