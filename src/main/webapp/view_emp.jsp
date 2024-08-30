<%@page import="employee_management_webapp.model.dto.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Data</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="wrapper">
<%
Employee emp = (Employee)request.getAttribute("employee");
%>
<h1>Employee Details</h1><br>
<h2>Id :<%= emp.getId() %></h2>
<h2>Name :<%= emp.getName() %></h2>
<h2>Salary :<%= emp.getSalary() %></h2>
<h2>Phone :<%= emp.getPhone() %></h2>
<h2>Role :<%= emp.getRole() %></h2>
</div>
</body>
</html>