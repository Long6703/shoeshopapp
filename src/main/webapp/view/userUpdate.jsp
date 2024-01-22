<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Model.Users" %>

<%
    Users user = (Users) request.getAttribute("userupdate");
%>
<html>
<head>
    <title>Update User's Profile</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
    <link rel="stylesheet" href="view/css/bootstrap.min.css">
    <link rel="stylesheet" href="view/css/style.css"> <!-- Create a custom CSS file for your styles -->
    <style>
        body {
            font-family: 'Mukta', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<form action="userupdate" method="post">
    <label>Username:</label> <input type="text" name="username" value="<%= user.getUsername() %>" readonly><br>
    <label>Full Name:</label> <input type="text" name="fullname" value="<%= user.getFullName() %>"><br>
    <label>Phone Number:</label> <input type="text" name="phone_number" value="<%= user.getPhone_number() %>"><br>
    <label>Google Account Id:</label> <input type="text" name="google_account_id" value="<%= user.getPhone_number() %>"><br>
    <label>Email:</label> <input type="text" name="email" value="<%= user.getEmail() %>"><br>
    <label>Avatar:</label> <input type="text" name="avatar" value="<%= user.getAvatar() %>"><br>
    <label>Created At:</label> <input type="date" name="create_at" value="<%= user.getCreate_at() %>"><br>
    <label>Updated At:</label> <input type="date" name="update_at" value="<%= user.getUpdate_at() %>"><br>
    <label>Status:</label> <input type="text" name="isactive" value="<%= user.isActive() %>"><br>
    <button type="submit">Save</button>
</form>

</body>
</html>
