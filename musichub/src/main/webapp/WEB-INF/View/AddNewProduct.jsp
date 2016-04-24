<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp" />
<title>Product Registration</title>
</head>
<body>
<br />
<br />
<center>
<form:form id="AddNew" method="POST" action="${pageContext.request.contextPath }/admin/addNewProduct" commandName="insertProductCommand" enctype="multipart/form-data">
   <table>
   
   <tr>
        <td><label for="id">ID</label></td>
        <td><form:input path="id" /></td>
    </tr>
    <tr>
        <td><label for="name">Name</label></td>
        <td><form:input path="name" id="name" /></td>
    </tr>
    <tr>
        <td><form:label path="category">Category</form:label></td>
        <td><form:input path="category" /></td>
    </tr>
    <tr>
        <td><form:label path="price">price</form:label></td>
        <td><form:input path="price" /></td>
    </tr>
     <tr>
        <td><form:label path="description">Description</form:label></td>
        <td><form:input path="description" /></td>
    </tr>
     <tr>
        <td><form:label path="image">Image</form:label></td>
        <td><form:input type="file" path="image" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</center>
<jsp:include page="footer.jsp" />
</body>
</html>