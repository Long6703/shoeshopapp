<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="Model.Users" %>

<%
    List<Users> users = (List<Users>) request.getAttribute("userlist");
%>

<html>
<head>
    <title>List of users</title>
</head>
<body>
<form action="http://localhost:8080/shoeshopapp_war/userlist" method="post">
    Username <input type="text" name="username">
    <button type="submit">Find</button>
</form>
<table border="1">
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
        <td><a href="http://localhost:8080/shoeshopapp_war/userdetail?username=<%= user.getUsername() %>">detail</a></td>
        <td><a href="http://localhost:8080/shoeshopapp_war/userupdate?username=<%= user.getUsername() %>">edit</a></td>
    </tr>
    <% } %>
</table>
</body>
</html>
