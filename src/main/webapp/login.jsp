<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<%@ include file="Components/Bootstrap.jsp" %>
</head>
<body>
     <%@ include file="Components/IndexNavBar.jsp" %>
     <div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Login</p>
						
						<% String failed=(String)session.getAttribute("failed");
						if(failed != null){
						%>
							<p class="text-center text-danger fs-4"><%= failed %></p>
						<% session.removeAttribute("failed"); %>
						<%} %>
						
						<form action="login" method="post">
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input
									name="email" type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-dark text-white col-md-12">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
     
</body>
</html>