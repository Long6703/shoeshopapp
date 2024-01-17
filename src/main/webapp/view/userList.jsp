<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="Model.Users" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
    List<Users> users = (List<Users>) request.getAttribute("users");
%>

<html>
<head>
    <title>List of users</title>
</head>
<body>
<table border="1">
    <tr>
        <th>User Name</th>
        <th>Full Name</th>
        <th>Dob</th>
        <th>Gender</th>
        <th>Phone Number</th>
        <th>Google Account Id</th>
        <th>Email</th>
        <th>Avatar</th>
        <th>Created At</th>
        <th>Updated At</th>
        <th>Is Active</th>
    </tr>
    <% for (Users user : users) { %>
    <tr>
        <td><%= user.getUsername() %></td>
        <td><%= user.getFullName() %></td>
        <td><%= user.getDob() %></td>
        <td><%= user.getGender() %></td>
        <td><%= user.getPhone_number() %></td>
        <td><%= user.getGoogle_account_id() %></td>
        <td><%= user.getEmail() %></td>
        <td><%= user.getAvatar() %></td>
        <td><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(user.getCreate_at()) %></td>
        <td><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(user.getUpdate_at()) %></td>
        <td><%= user.isActive() %></td>
    </tr>
    <% } %>
</table>
</body>
</html>
