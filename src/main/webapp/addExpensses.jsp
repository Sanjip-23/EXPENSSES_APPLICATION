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
<% User user =(User)session.getAttribute("UserData"); 
if(user == null ){
	response.sendRedirect("login.jsp");
}
	else{
	%>
		<%@ include file="Components/HomeNavBar.jsp" %>
		<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Add Expensses</p>
						
						<form action="addExpensses" method="post">
							<div class="mb-3">
								<label class="form-label">Name of Expensses</label> <input name="nameOfExpensses"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Price</label> <input name="price"
									type="number" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Date</label> <input name="date"
									type="date" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Time</label> <input
									name="time" type="time" class="form-control" required>
							</div>
							
							<button type="submit" class="btn bg-dark text-white col-md-12">ADD Expensses</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<% }
%>
</body>
</html>