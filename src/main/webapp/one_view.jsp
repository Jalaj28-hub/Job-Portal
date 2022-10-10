<%@page import="entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset-ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_components/all_css.jsp"%>
<style>
h6 {
	font-weight: bold;
	text-transform: uppercase;
}
</style>
<title>User : View Jobs</title>

</head>
<body style="background-color: #f0f1f2;">
	<c:if test="$(empty userobj }">
		<c:redirect url="Login.jsp" />
	</c:if>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Jobs</h5>
				<%-- <c:if test="${not empty succMsg }">
					<h4 class="text-center text-danger">${succMsg }</h4>
					<c:remove var="succMsg" />
				</c:if> --%>
				<div class="card">
					<div class="card-body">

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						JobDAO dao = new JobDAO(DBConnect.getConn());
						Jobs j = dao.getJobById(id);
						%>
						<div class="card mt-2">
							<div class="card-body">
								<div class="text-center text-primary">
									<i class="far fa-clipboard fa-2x"></i>
								</div>
								<h6>
									<%=j.getTitle()%>
								</h6>

								<p><%=j.getDescription()%>.
								</p>
								<p><%=j.getDescription()%>
								</p>
								<br>
								<div class="form-row">
									<div class="form-group col-md-3 ">
										<input type="text" class="form-control form-control-sm"
											value="Location: <%=j.getLocation()%>" readonly>
									</div>
									<div class="form-group col-md-3">
										<input type="text" class="form-control form-control-sm"
											value="category: <%=j.getCategory()%>" readonly>
									</div>
								</div>


								<h8> Publish Date: <%=j.getPdate().toString()%></h8>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>