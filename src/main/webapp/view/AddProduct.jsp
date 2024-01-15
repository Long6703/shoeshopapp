<%--
  Created by IntelliJ IDEA.
  User: bichngoc
  Date: 1/15/2024
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
</head>
<body>
<h2>Product Input Form</h2>

<form action="/add" method="post">
    <table>
        <
    </table>
    <label for="model">Model:</label>
    <input type="text" id="model" name="model" required><br>

    <label for="description">Description:</label>
    <textarea id="description" name="description" rows="4" required></textarea><br>

    <label for="image">Image URL:</label>
    <input type="text" id="image" name="image" required><br>

    <label for="price">Price:</label>
    <input type="number" id="price" name="price" step="0.01" required><br>

    <label for="createdAt">Created At:</label>
    <input type="text" id="createdAt" name="createdAt" placeholder="YYYY-MM-DD HH:mm:ss" required><br>

    <label for="updatedAt">Updated At:</label>
    <input type="text" id="updatedAt" name="updatedAt" placeholder="YYYY-MM-DD HH:mm:ss" required><br>

    <label for="isActive">Is Active:</label>
    <input type="checkbox" id="isActive" name="isActive" value="true" checked><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>
