<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap Core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value="/resources/css/business-frontpage.css" />"
	rel="stylesheet">
<!-- jQuery -->
<script src="<c:url value="/resources/js/jquery.js" />"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> </a>
		</div>
		<script>
				function formSubmit() {
					document.getElementById("logoutForm").submit();
				}
		  </script>
		<s:url value="/perform_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<s:if
						test="${pageContext.request.userPrincipal.name != null}">
							<li>Welcome : ${pageContext.request.userPrincipal.name} </li>
							<li><a href="javascript:formSubmit()"> Logout</a></li>
							<security:authentication var="user"
								property="principal.authorities" />

							<security:authorize var="loggedIn" access="isAuthenticated()">
							
								<security:authorize access="hasRole('ROLE_ADMIN')">
								<li>	Admin </li>
	        					</security:authorize>

								<security:authorize access="hasRole('ROLE_USER')">
									User
	        					</security:authorize>
							</security:authorize>
					
					</s:if>
					 
					<s:if
					    test="${pageContext.request.userPrincipal.name == null}">
				<li> <a href="login">Login</a> </li></s:if> 
				<li><a href="#">Sign Up</a></li>
				
				<li><a href="${pageContext.request.contextPath }/allproduct">All
						Products</a></li>
				<li></li>
				<li><a
					href="${pageContext.request.contextPath }/admin/addProduct">Add
						New Product</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>
</body>
</html>