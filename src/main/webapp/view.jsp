<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="wrapper">
    <form action="view_emp" method="post">
        <h1>View Employee</h1><br>
        <div class="input-box">
            Employee Id : <input type = "number" name = "id" placeholder= "Enter employee id" required><br>
        </div>
        <button type="submit" class="btn">Submit</button><br>
    </form>
</div>
</body>
</html>