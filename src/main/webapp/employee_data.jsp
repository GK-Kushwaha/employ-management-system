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
    <form action="add_emp" method="post">
        <h1>Employee Data</h1><br>
        <div class="input-box">
            Employee Id : <input type = "number" name = "id" placeholder= "Enter employee id" required><br>
        </div>
        
        <div class="input-box">
            Employee Name : <input type = "text" name = "name" placeholder= "Enter employee name" required><br>
        </div>
        
        <div class="input-box">
            Employee Salary : <input type = "text" name = "salary" placeholder= "Enter employee salary" required><br>
        </div>
        
        <div class="input-box">
            Employee Phone : <input type = "tel" name = "phone" placeholder= "Enter employee phone number" required><br>
        </div>
        
        <div class="input-box">
            Employee Password : <input type = "text" name = "password" placeholder= "Enter employee password" required><br>
        </div>
        
        <div class="input-box">
            Employee Role : <input type = "text" name = "role" placeholder= "Enter employee role" required><br>
        </div>
        <button type="submit" class="btn">Submit</button><br>
    </form>
</div>
</body>
</html>