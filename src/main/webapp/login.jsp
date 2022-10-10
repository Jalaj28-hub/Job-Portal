<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body style="background-color:#f0f1f2;">
	<%@include file="all_components/navbar.jsp"%>
	<div class="continer-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>Login Page</h5>
						</div>
						 <c:if test ="${notemptysuccMsg }">
							<h4 class="text-center text-danger">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if> 
						<form action="Login" method="post">
							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									required="required" class="form-control"
									id="exampleInputEmaill" aria-describedby="emailHelp" name="em">
							</div>
							<div class="form-group">
								<label for="exampleInput Password1">Enter Password</label> <input
									required="required" type="password" class="form-control"
									id="exampleInput Password1" name="ps">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
<footer>
<div style="margin-top: 120px;">
<%@include file="all_components/footer.jsp"%>
</div>
</footer>
</html>