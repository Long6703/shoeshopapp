<%@ page import="java.util.List" %>
<%@ page import="Model.*" %><%--
  Created by IntelliJ IDEA.
  User: 84354
  Date: 1/19/2024
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%Products product = (Products) request.getAttribute("product"); %>
    <%ProductDetails productDetails = (ProductDetails) request.getAttribute("productDetails"); %>
    <%List<Sizes> sizes = (List<Sizes>) request.getAttribute("sizes"); %>
    <%List<Colors> colors = (List<Colors>) request.getAttribute("colors"); %>
    <%List<Images> images = (List<Images>) request.getAttribute("images"); %>

    <title>Shoppers &mdash; <%=product.getModel()%>
    </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
    <link rel="stylesheet" href="view/fonts/icomoon/style.css">
    <link rel="stylesheet" href="view/css/bootstrap.min.css">
    <link rel="stylesheet" href="view/css/magnific-popup.css">
    <link rel="stylesheet" href="view/css/jquery-ui.css">
    <link rel="stylesheet" href="view/css/owl.carousel.min.css">
    <link rel="stylesheet" href="view/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="view/css/aos.css">
    <link rel="stylesheet" href="view/css/style.css">

</head>
<body>
<div class="site-wrap">
    <header class="site-navbar" role="banner">
        <div class="site-navbar-top">
            <div class="container">
                <div class="row align-items-center">

                    <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
                        <form action="search" method="post" class="site-block-top-search">
                            <span class="icon icon-search2"></span>
                            <input type="text" class="form-control border-0" name="pattern" placeholder="Search">
                        </form>
                    </div>

                    <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                        <div class="site-logo">
                            <a href="index.html" class="js-logo-clone">Shoppers</a>
                        </div>
                    </div>

                    <div class="col-6 col-md-4 order-3 order-md-3 text-right">
                        <div class="site-top-icons">
                            <ul>
                                <li><a href="#"><span class="icon icon-person"></span></a></li>
                                <li><a href="#"><span class="icon icon-heart-o"></span></a></li>
                                <li>
                                    <a href="cart.html" class="site-cart">
                                        <span class="icon icon-shopping_cart"></span>
                                        <span class="count">2</span>
                                    </a>
                                </li>
                                <li class="d-inline-block d-md-none ml-md-0"><a href="#"
                                                                                class="site-menu-toggle js-menu-toggle"><span
                                        class="icon-menu"></span></a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>

    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0"><a href="index.jsp">Home</a> <span class="mx-2 mb-0">/</span> <strong
                        class="text-black"><%=product.getModel()%>
                </strong></div>
            </div>
        </div>
    </div>

    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="<%=images.get(0).getImageUrl()%>" alt="Image" class="img-fluid">
                </div>
                <div class="col-md-6">
                    <h2 class="text-black"><%=product.getModel()%>
                    </h2>
                    <p class="mb-4"><%=product.getDescription()%>
                    </p>
                    <p><strong class="text-primary h4"><%=product.getPrice()%>
                    </strong></p>
                    <form action="order" method="POST">
                        <div class="mb-1 d-flex">
                            <% for (Colors c : colors) { %>
                            <label for="color-<%= c.getColorId() %>" class="d-flex mr-3 mb-3">
            <span class="d-inline-block mr-2" style="top:-2px; position: relative;">
                <input type="radio" id="color-<%= c.getColorId() %>" name="selectedColor" value="<%= c.getColorId() %>">
            </span>
                                <span class="d-inline-block text-black"><%= c.getColorName() %></span>
                            </label>
                            <% } %>
                        </div>
                        <div class="mb-1 d-flex">
                            <% for (Sizes s : sizes) { %>
                            <label for="size-<%= s.getSizeId() %>" class="d-flex mr-3 mb-3">
            <span class="d-inline-block mr-2" style="top:-2px; position: relative;">
                <input type="radio" id="size-<%= s.getSizeId() %>" name="selectedSize" value="<%= s.getSizeId() %>">
            </span>
                                <span class="d-inline-block text-black"><%= s.getSizeName() %></span>
                            </label>
                            <% } %>
                        </div>
                        <div class="mb-5">
                            <div class="input-group mb-3" style="max-width: 120px;">
                                <div class="input-group-prepend">
                                    <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                                </div>
                                <input type="text" class="form-control text-center" value="1" placeholder=""
                                       aria-label="Example text with button addon" aria-describedby="button-addon1">
                                <div class="input-group-append">
                                    <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                                </div>
                            </div>
                        </div>
                        <p><input type="submit" value="Add To Cart"></p>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="view/js/jquery-3.3.1.min.js"></script>
    <script src="view/js/jquery-ui.js"></script>
    <script src="view/js/popper.min.js"></script>
    <script src="view/js/bootstrap.min.js"></script>
    <script src="view/js/owl.carousel.min.js"></script>
    <script src="view/js/jquery.magnific-popup.min.js"></script>
    <script src="view/js/aos.js"></script>
    <script src="view/js/main.js"></script>

</body>
</html>
