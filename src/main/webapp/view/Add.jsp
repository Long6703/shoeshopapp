<%--
  Created by IntelliJ IDEA.
  User: bichngoc
  Date: 1/15/2024
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Product Input Form</h2>

<form action="add" method="post">

    <label for="model">Model:</label>
    <input type="text" id="model" name="model" required><br>

    <label for="description">Description:</label>
    <textarea id="description" name="description" rows="4" required></textarea><br>

    <label for="image">Image URL:</label>
    <input type="text" id="image" name="image" required><br>

    <label for="price">Price:</label>
    <input type="number" id="price" name="price" step="1" required><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>
