<%@ page import="Model.Products" %><%--
  Created by IntelliJ IDEA.
  User: bichngoc
  Date: 1/21/2024
  Time: 7:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Products p = (Products) request.getAttribute("product");
%>
<form action="/shoeshopapp/EditProForAdmin" method="post">
    <%-- Assuming UpdateProduct servlet/controller handles the update logic --%>
    <input type="hidden" name="productId" value="<%= p.getProductId() %>">

    <label for="model">Model:</label>
    <input type="text" id="model" name="model" value="<%= p.getModel() %>"><br>

    <label for="price">Price:</label>
    <input type="text" id="price" name="price" value="<%= p.getPrice() %>"><br>

    <label for="createAt">Create At:</label>
    <input type="text" id="createAt" name="createAt" value="<%= p.getCreateAt() %>"><br>

    <label for="updateAt">Update At:</label>
    <input type="text" id="updateAt" name="updateAt" value="<%= p.getUpdateAt() %>"><br>

    <label for="isActive">Is Active:</label>
    <select id="isActive" name="isActive">
        <option value="true" <%= request.getParameter("isActive").equals("true") ? "selected" : "" %>>Yes</option>
        <option value="false" <%= request.getParameter("isActive").equals("false") ? "selected" : "" %>>No</option>
    </select><br>

    <%-- Add other input fields for additional product details --%>

    <button type="submit">Update Product</button>
</form>
</body>
</html>
