<%@ page import="Model.ProductDetails" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bichngoc
  Date: 1/20/2024
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("ID");
    request.setAttribute("id", id);
%>
<form action="/ProductDetailForAdmin" method="post">
    <%--@declare id="colorid"--%><%--@declare id="sizeid"--%><%--@declare id="sizeid"--%><%--@declare id="productid"--%>
    <label for="productId">Product ID:</label>
    <input type="text" name="productId" readonly placeholder="<%= id %>"/><br>

    <label for="colorId">Color:</label>
    <select name="colorId">
        <!-- Add options for colors -->
        <option value="red">Red</option>
        <option value="blue">Blue</option>
        <option value="green">Green</option>
        <!-- Add more options as needed -->
    </select><br>

    <label for="sizeId">Size:</label>
    <select name="sizeId">
        <!-- Add options for sizes -->
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
        <!-- Add more options as needed -->
    </select><br>

    <input type="submit" value="Add to cart">
</form>

<%
    // Display product details
    if (request.getAttribute("proDetail") != null) {
%>
<p><strong>Product ID:</strong> <%= ((ProductDetails)request.getAttribute("proDetail")).getProductId() %></p>
<p><strong>Color:</strong> <%= request.getAttribute("color") %></p>
<p><strong>Size:</strong> <%= request.getAttribute("size") %></p>
<%
} else {
%>
<p>No product details found for the given parameters.</p>
<%
    }
%>

</body>
</html>
