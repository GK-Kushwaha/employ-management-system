<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Login</title>
<link rel="stylesheet" href="style.css">
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <form action="admin_Login" method="post">
        <h1>Admin Login</h1><br><br>
        <div class="input-box">
            Admin Id : <input type="number" name="id" placeholder="Admin Id" required>
            <i class='bx bxs-user'></i><br><br>
        </div>
        <div class="input-box">
            Admin Password : <input type="password" name="password" placeholder="Password" required>
            <i class='bx bxs-lock-alt'></i><br><br>
        </div>
        <div class="remember-forgot">
            <label>
                <input type="checkbox">Remember me
            </label>
            <a href="#">Forgot password</a><br><br>
        </div>
        <button type="submit" class="btn">Login</button><br><br>
        <div class="register-link">
            <p>Don't have an account? <a href="#">Register</a></p>
        </div>
    </form>
</div>
</body>
</html>
    