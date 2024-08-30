<%@page import="employee_management_webapp.model.dto.Employee" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<Employee>employees =(List<Employee>)request.getAttribute("employees");
%>

<table>
<tr>
<th>Id</th>
<th>Name</th>
<th>Salary</th>
<th>Phone</th>
<th>Password</th>
<th>Role</th>
<th></th>
<th></th>
</tr>

<% 
for(Employee emp : employees){
%>
<tr>
<td><%= emp.getId() %></td>
<td><%= emp.getName() %></td>
<td><%= emp.getSalary() %></td>
<td><%= emp.getPhone() %></td>
<td><%= emp.getPassword() %></td>
<td><%= emp.getRole() %></td>
<td><a href = "remove_emp?id=<%= emp.getId() %>">Remove Employee</a></td>
<td><a href = "update_emp.jsp?id=<%= emp.getId() %>&name=<%= emp.getName() %>&salary=<%= emp.getSalary() %>&phone=<%= emp.getPhone() %>&password=<%= emp.getPassword()%>&role=<%= emp.getRole()%>">Update Employee</a></td>


<% } %>
</tr>

</table>
</body>
</html>