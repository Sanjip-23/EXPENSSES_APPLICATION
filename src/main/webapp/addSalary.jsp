<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Salary</title>
<%@ include file="Components/Bootstrap.jsp" %>
</head>
<body>
   <% User user = (User)session.getAttribute("UserData");
   if(user == null){
	   response.sendRedirect("login.jsp");
   }
   else{  %>
	   <%@ include file="Components/HomeNavBar.jsp" %>
	   <div class="container p-5">
	  		<div class="row">
	  			<div class="col-md-4 offset-md-4">
	  				<div class="card paint-card">
	  					<div class="card-body">
	  						<p class="fs-4 text-center">SALARY</p>
	  						
	  						<form action="addSalary" method="post">
	  							<div class="mb-3">
	  								<label class="form-label">Salary</label> <input
	  								<% String msg2 = (String) session.getAttribute("salaryAdd"); 
						if(msg2 != null){
						%>
						<p class = "text-center text-success fs-4"> <%= msg2 %></p>
						
						<%
						session.removeAttribute("salaryAdd");
						}
					
						%>	
	  									name="salary" type="tel" class="form-control" required>
	  							</div>
	  							
	  							<button type="submit" class="btn bg-dark text-white col-md-12">Add Salary</button>
	  						</form>
	  					</div>
	  				</div>
	  			</div>
	  		</div>
	  	</div>
   
  <% } %>
</body>
</html>