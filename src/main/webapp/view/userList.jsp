<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.Users" %>

<%
    List<Users> users = (List<Users>) request.getAttribute("userlist");
%>

<html>
<head>
    <title>List of Users</title>
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
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #dee2e6;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
<form action="userlist" method="post">
    Username <input type="text" name="username">
    <button type="submit">Find</button>
</form>
<table>
    <tr>
        <th>Username</th>
        <th>Full Name</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>User Detail</th>
        <th>User Update</th>
    </tr>
    <% for (Users user : users) { %>
    <tr>
        <td><%= user.getUsername() %></td>
        <td><%= user.getFullName() %></td>
        <td><%= user.getPhone_number() %></td>
        <td><%= user.getEmail() %></td>
        <td><a href="userdetail?username=<%= user.getUsername() %>">detail</a></td>
        <td><a href="userupdate?username=<%= user.getUsername() %>">edit</a></td>
    </tr>
    <% } %>
</table>
</body>
</html>
