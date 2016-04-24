<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="header.jsp" />
<title>View All Product </title>
</head>
<body>
	<div class="table-responsive"> 
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
			<s:forEach var="product" items="${products}">
			<tr>
				<td>${product.id }</td>
				<td>${product.name}</td>
				<td><img src="<c:url value="/resources/${product.id}.jpg" />" height="50px" width="50px" /></td>
				<td><a href="viewProduct?pid=${product.id}">View Product</a></td>
				<td><a href="editProduct?pid=${product.id}">Edit Product</a></td>
				<td><a href="deleteProduct?pid=${product.id}">Delete Product</a></td>
			</tr>
			</s:forEach>
		</tbody>
	</table>
	</div>
<jsp:include page="footer.jsp" />        	
</body>
</html>