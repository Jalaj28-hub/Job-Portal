<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page isELIgnored="false" %>
   <%@ page import="com.dao.JobDAO" %>
   <%@ page import="entity.Jobs" %>
   <%@ page import="com.DB.DBConnect" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_components/all_css.jsp"%>
<title>Delete Job</title>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>
						
						<%
						int id =Integer.parseInt(request.getParameter("id"));
						JobDAO dao =new JobDAO(DBConnect.getConn());
						Jobs j=dao.getJobById(id);
						%>
						
						
						 <c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${ succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>
						<h5>Add Jobs</h5>
					</div>
					<form action="delete" method="post">
					
					<input type="hidden" value="<%=j.getId() %>">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control" value="<%=j.getTitle()%>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="Location"
									class="custom-select " id="inline FormCustomSelectPref">
									<option value="<%=j.getLocation() %>"><%=j.getLocation() %></option>
									<option value="Odisha">Odishak/option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Gujurat">Gujurat</option>
									<option value="Bhubaneswar">Bhubaneswar</option>
									<option value="Delhi">Delhi</option>
									<option value="Bang Lore">Banglore</option>
									<option value="Chennai">Chennai</option>
									<option value="Hydrabad">Hydrabad</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select class="custom-select "
									id="inlineFormCustomSelectPref" name="category">
									<option value="<%=j.getCategory() %>"><%=j.getCategory() %></option>
									<option value="IT">IT</option>
									<option value="Devloper">Devloper</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
								<option class="Active" value="<%=j.getStatus() %>"><%=j.getStatus() %></option>
									<option class="Active" value="Active">Active</option>
									<option class="inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label><%=j.getDescription() %></label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>
						<button class="btn btn-success">Update Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>