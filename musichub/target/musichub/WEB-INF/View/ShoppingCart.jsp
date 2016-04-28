<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
</head>
<body>
 <div class="container">
 <!-- <h2>Product Details</h2>
 <p>Here are the new products available in this site...</p>      -->
 <div class="table-responsive">       
 <table class="table table-hover" width="50%">
   <thead>
     <tr>
       <th>Product</th>
       <th>Name</th>
       <th>Description</th>
       <th>Price</th>
       <th>Quantity</th>
       <th>Sub Total</th>
     </tr>
   </thead>
    <tbody>
			<s:forEach var="product" items="${products}">
			<tr>
				<td><a href="deleteProduct?pid=${product.id}">Delete Product</a></td>
			</tr>
			</s:forEach>
			<tr>
				<td>
		</tbody>
	</table>
	</div>
</div>
<jsp:include page="footer.jsp" />        	
</body>
</html>