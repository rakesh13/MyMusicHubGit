<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp" />
<title>Product Details</title>
</head>
<body>
 <div class="container">
 <!-- <h2>Product Details</h2>
 <p>Here are the new products available in this site...</p>      -->
 <div class="table-responsive">       
 <table class="table table-hover" width="50%">
   <thead>
     <tr>
       <th>Product Id</th>
       <th>Name</th>
       <th>Description</th>
       <th>Price</th>
       <th>Category</th>
       <th>Image</th>
     </tr>
   </thead>
   <tbody>
          <tr>
       <td>${product.id}</td>
       <td>${product.name}</td>
       <td>${product.description}</td>
       <td>${product.price}</td>
       <td>${product.category}</td>
       <td><img src="<c:url value="/resources/${product.id}.jpg" />" height="100px" width="100px" /></td> 
     </tr>
     </tbody>
 </table>
 </div>
 <form action="user/addCart?pid=${product.id}">
     <input type="submit" value="Add to Cart">
 </form>
</div>
</body>
</html>