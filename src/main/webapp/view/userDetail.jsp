<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="Model.Users" %>

<%
    Users user = (Users) request.getAttribute("userdetail");
%>

<html>
<head>
    <title>User's Profile</title>
</head>
<body>
Username          <%= user.getUsername() %> </br>
Full Name         <%= user.getFullName() %> </br>
Phone Number      <%= user.getPhone_number() %> </br>
Google Account Id <%= user.getGoogle_account_id() %> </br>
Email             <%= user.getEmail() %> </br>
Avatar            <%= user.getAvatar() %> </br>
Created At        <%= user.getCreate_at() %> </br>
Updated At        <%= user.getUpdate_at() %> </br>
Status            <%= user.isActive() %> </br>
<a href="http://localhost:8080/shoeshopapp_war/userupdate?username=<%= user.getUsername() %>">Edit Profile</a>
</body>
</html>