<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Model.Users" %>

<%
    Users user = (Users) request.getAttribute("userdetail");
%>

<html>
<head>
    <title>User's Profile</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
    <link rel="stylesheet" href="view/css/bootstrap.min.css">
    <link rel="stylesheet" href="view/css/style.css"> <!-- Create a custom CSS file for your styles -->
    <style>
        body {
            font-family: 'Mukta', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #007bff;
        }

        .profile-info {
            margin-top: 20px;
        }

        label {
            font-weight: bold;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>User's Profile</h1>
    <div class="profile-info">
        <label>Username:</label> <%= user.getUsername() %> <br>
        <label>Full Name:</label> <%= user.getFullName() %> <br>
        <label>Phone Number:</label> <%= user.getPhone_number() %> <br>
        <label>Google Account Id:</label> <%= user.getGoogle_account_id() %> <br>
        <label>Email:</label> <%= user.getEmail() %> <br>
        <label>Avatar:</label> <%= user.getAvatar() %> <br>
        <label>Created At:</label> <%= user.getCreate_at() %> <br>
        <label>Updated At:</label> <%= user.getUpdate_at() %> <br>
        <label>Status:</label> <%= user.isActive() %> <br>
    </div>
    <a href="userupdate?username=<%= user.getUsername()%>">Edit Profile</a>
</div>
</body>
</html>
