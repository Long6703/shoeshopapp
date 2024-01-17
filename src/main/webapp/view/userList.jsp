<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <th>Email</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td><c:out value="${user.username}" /></td>
            <td><c:out value="${user.fullname}" /></td>
            <td><c:out value="${user.dob}" /></td>
            <td><c:out value="${user.gender}" /></td>
            <td><c:out value="${user.phone_number}" /></td>
            <td><c:out value="${user.email}" /></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
