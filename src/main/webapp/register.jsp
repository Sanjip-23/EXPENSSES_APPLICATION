<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<%@ include file="Components/Bootstrap.jsp" %>
</head>
<body>
<%@ include file="Components/IndexNavBar.jsp" %>
      <div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Registration Page</p>
						
						<% String msg=(String)session.getAttribute("success"); 
						if(msg != null)
						{
						%>
						<p class="text-center text-success fs-4"><%= msg %></p>
						
						<% session.removeAttribute("success");
						}
						%>
						
						<form action="register" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label> <input name="name"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Age</label> <input name="age"
									type="tel" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Address</label> <input name="address"
									type="tel" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input
									name="email" type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-dark text-white col-md-12">Register</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>