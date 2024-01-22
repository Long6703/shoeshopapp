<%--
  Created by IntelliJ IDEA.
  User: bichngoc
  Date: 1/20/2024
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List" %>
<%@page import="Model.Products" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a class="nav-link pl-3" href="/shoeshopapp/listProForAdmin"><span class="ml-1 item-text">List Product</span></a>
<a class="nav-link pl-3" href="/shoeshopapp/CreateProForAdmin"><span class="ml-1 item-text">Create Product</span></a>

<table class="table datatables" id="dataTable-1" border="1px">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Create At</th>
        <th>Update At</th>
        <th>Active</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Products> listProduct = (List<Products>) request.getAttribute("listProduct");
        if (listProduct != null) {
            for (Products product : listProduct) {
    %>
    <tr>
        <td><%= product.getProductId() %></td>
        <td>
            <form action="/shoeshopapp/ProductDetailForAdmin" method="post">
                <input type="hidden" name="productId" value="<%= product.getProductId() %>">
                <button type="submit" class="btn btn-link"><%= product.getModel() %></button>
            </form>
        </td>
        <td><%= product.getPrice() %></td>
        <td><%= product.getCreateAt() %></td>
        <td><%= product.getUpdateAt() %></td>
        <td>
            <% if (product.isActive()) { %>
            <span class="dot dot-lg bg-success mr-2" id="1">1</span>
            <% } else { %>
            <span class="dot dot-lg bg-warning mr-2" id="0">0</span>
            <% } %>
        </td>
        <td>
            <div class="dropdown-menu dropdown-menu-right">
                <form action="/shoeshopapp/EditProForAdmin" method="get">
                    <input type="hidden" name="productIdEdit" value="<%= product.getProductId() %>">
                    <button type="submit" class="btn btn-link">Edit</button>
                </form>
            </div>
        </td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
</body>
</html>
