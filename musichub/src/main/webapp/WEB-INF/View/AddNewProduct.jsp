<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp" />
<title>Product Registration</title>
<style>
  .error{color: red;font-weight: bold}
</style>
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
    	<td>Name</td>
         <td><form:input path="name" id="name" /></td>
         <td><form:errors path="name" cssClass="error">Name</form:errors></td>
    </tr>
    <tr>
        <td>Category</td>
        <td><form:input path="category" /></td>
        <td><form:errors path="category" cssClass="error"></form:errors></td>
        
    </tr>
    <tr>
        <td>Price</td>
        <td><form:input path="price" /></td>
        <td><form:errors path="price">price</form:errors></td>
    </tr>
     <tr>
        <td>Description</td>
        <td><form:input path="description"/></td>
        <td><form:errors path="description" cssClass="error"> </form:errors>
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