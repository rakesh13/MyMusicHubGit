<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<h1>Login</h1>
   <form name='f' action="perform_login" method="POST">
      <table>
         <tr>
            <td>User:</td>
            <td><input type="text" name="username" /></td>
         </tr>
         <tr>
            <td>Password:</td>
            <td><input type="password" name="password" /></td>
         </tr>
         <tr>
            <td><input name="submit" type="submit" value="Login" /></td>
         </tr>
      </table>
  </form>
</body>
</html>