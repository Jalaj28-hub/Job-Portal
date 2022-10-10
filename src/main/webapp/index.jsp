<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Portal</title>
<%@include file="all_components/all_css.jsp"%>
<style type="text/css">
.back-img{
background: url("img/job_search_portals.png");
width: 100%;
height: 80vh;
background-repeat: no-repeat;
background-size: cover;
}
</style>

</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<% Connection con=DBConnect.getConn();
	out.println(con); %>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">
				<i class="fa fa-book" aria-hidden="true"></i> Online Job Portal
			</h1>
		</div>
	</div>
</body>
<footer>
<%@include file="all_components/footer.jsp"%>
</footer>
</html>
l>
