<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
</head>
<body>
<%
String id =request.getParameter("id");
String name =request.getParameter("name");
String salary =request.getParameter("salary");
String phone =request.getParameter("phone");
String password =request.getParameter("password");
String role =request.getParameter("role");
%>
<form action="update_emp" method = "post">
<input type = "hidden" name = "id" value =<%=id%>><br>
Name : <input type = "text" name = "name" placeholder = <%= name %>><br>
Salary : <input type = "text" name = "salary" placeholder = <%= salary %>><br>
Phone : <input type = "tel" name = "phone" placeholder = <%= phone %>><br>
password : <input type = "text" name = "password" placeholder = <%= password %>><br>
Role : <input type = "text" name = "role" placeholder = <%= role %>><br>
<input type = "submit">
</form>
</body>
</html>