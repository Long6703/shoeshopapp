<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="Model.Users" %>

<%
    Users user = (Users) request.getAttribute("userupdate");
%>
<html>
<head>
    <title>Update User's Profile</title>
</head>
<body>

<form action="http://localhost:8080/shoeshopapp_war/userupdate" method="post">
Username          <input type="text" name="username"          value="<%= user.getUsername() %>" readonly></br>
Full Name         <input type="text" name="fullname"          value="<%= user.getFullName() %>"></br>
Phone Number      <input type="text" name="phone_number"      value="<%= user.getPhone_number() %>"></br>
Google Account Id <input type="text" name="google_account_id" value="<%= user.getPhone_number() %>"></br>
Email             <input type="text" name="email"             value="<%= user.getEmail() %>"></br>
Avatar            <input type="text" name="avatar"            value="<%= user.getAvatar() %>"></br>
Created At        <input type="date" name="create_at"         value="<%= user.getAvatar() %>"></br>
Updated At        <input type="date" name="update_at"         value="<%= user.getAvatar() %>"></br>
Status            <input type="text" name="isactive"          value="<%= user.isActive() %>"></br>
<button type="submit">Save</button>
</form>

</body>
</html>
