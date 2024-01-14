<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 1/14/2024
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form>
            <input type="text" placeholder="Username" required>
            <input type="password" placeholder="Password" required>
            <label for="remember"><input type="checkbox" id="remember"> Remember me</label>
            <button type="submit">Login</button>
        </form>
        <div>
            <a href="#">Forgot password?</a>
        </div>
        <div>
            <button onclick="loginWithGoogle()">Login with Gmail</button>
        </div>
    </div>

    <script>
        function loginWithGoogle() {
            // Implement your Google login logic here
            alert("Login with Gmail clicked");
        }
    </script>
</body>
</html>
