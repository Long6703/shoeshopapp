<%@ page import="Model.Products" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.Categories" %>
<%@ page import="Service.productService.ProductService2" %><%--
  Created by IntelliJ IDEA.
  User: 84354
  Date: 1/18/2024
  Time: 3:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Shoppers &mdash; Shopping</title>
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

    <link rel="stylesheet" href="view/css/style1.css">

</head>
<body>

<div class="site-wrap">
    <header class="site-navbar" role="banner">
        <div class="site-navbar-top">
            <div class="container">
                <div class="row align-items-center">

                    <div class="col-7 col-md-4 order-2 order-md-1 site-search-icon text-left">
                        <form action="search" method="post" class="site-block-top-search">
                            <span class="icon icon-search2"></span>
                            <input type="text" class="form-control border-0" name="pattern" placeholder="Search">
                        </form>
                    </div>

                    <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                        <div class="site-logo">
                            <a href="index.jsp" class="js-logo-clone">Shoppers</a>
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
                                <li class="d-inline-block d-md-none ml-md-0">
                                    <a href="#" class="site-menu-toggle js-menu-toggle">
                                        <span class="icon-menu"></span>
                                    </a>
                                </li>
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
                        class="text-black">Shop</strong></div>
            </div>
        </div>
    </div>
    <!--Product container-->
    <div class="site-section">
        <div class="container">

            <div class="row mb-5">
                <div class="col-md-9 order-2">

                    <div class="row">
                        <div class="col-md-12 mb-5">
                            <div class="float-md-left mb-4"><h2 class="text-black h5">Product List</h2></div>
                            <%--                            <div class="d-flex">--%>
                            <%--                                <div class="dropdown mr-1 ml-md-auto">--%>
                            <%--                                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle"--%>
                            <%--                                            id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true"--%>
                            <%--                                            aria-expanded="false">--%>
                            <%--                                        Latest--%>
                            <%--                                    </button>--%>
                            <%--                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">--%>
                            <%--                                        <a class="dropdown-item" href="#">Newest</a>--%>
                            <%--                                        <a class="dropdown-item" href="#">Best Seller</a>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                                <div class="btn-group">--%>
                            <%--                                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle"--%>
                            <%--                                            id="dropdownMenuReference" data-toggle="dropdown">Reference--%>
                            <%--                                    </button>--%>
                            <%--                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">--%>
                            <%--                                        <a class="dropdown-item" href="#">Name, A to Z</a>--%>
                            <%--                                        <a class="dropdown-item" href="#">Name, Z to A</a>--%>
                            <%--                                        <div class="dropdown-divider"></div>--%>
                            <%--                                        <a class="dropdown-item" href="#">Price, low to high</a>--%>
                            <%--                                        <a class="dropdown-item" href="#">Price, high to low</a>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                        </div>
                    </div>
                    <div class="row mb-5">
                        <% List<Products> list = (List<Products>) request.getAttribute("productsList"); %>
                        <% if (list != null && !list.isEmpty()) { %>
                        <% for (Products p : list) { %>
                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                            <div class="block-4 text-center border">
                                <figure class="block-4-image">
                                    <a href="productdetail?id=<%=p.getProductId()%>"><img src="images/cloth_1.jpg" alt="Image placeholder" class="img-fluid"></a>
                                </figure>
                                <div class="block-4-text p-4">
                                    <h3>
                                        <a href="productdetail?id=<%=p.getProductId()%>"><%=p.getModel()%></a>
                                    </h3>
                                    <p class="text-primary font-weight-bold"><%= p.getPrice() %>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <% } %>
                        <% } else { %>
                        <p><%= request.getAttribute("error") %>
                        </p>
                        <% } %>
                    </div>
                    <!--Paging-->
                    <div class="row" data-aos="fade-up">
                        <div class="col-md-12 text-center">
                            <div class="site-block-27">
                                <ul>
                                    <li><a href="#">&lt;</a></li>
                                    <li class="active"><span>1</span></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">&gt;</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Categories-->
                <div class="col-md-3 order-1 mb-5 mb-md-0">
                    <div class="border p-4 rounded mb-4">
                        <h2 class="mb-3 h3 text-uppercase text-black d-block">Categories</h2>
                        <ul class="list-unstyled mb-0">
                            <%
                                ServletContext servletContext = request.getServletContext();
                                ProductService2 productService = (ProductService2) servletContext.getAttribute("productService");
                                List<Categories> categoriesList = (List<Categories>) request.getAttribute("categoriesList");
                            %>
                            <a href="productlist" class="d-flex">
                                <span>All Products</span>
                                <span class="text-black ml-auto"><%=productService.countAllProduct()%></span>
                            </a>
                            <%
                                for (Categories c : categoriesList) {
                            %>
                            <li class="mb-1">
                                <a href="productlist?action=1&id=<%= c.getCategoryId() %>" class="d-flex">
                                    <span><%= c.getCategoryName() %></span>
                                    <span class="text-black ml-auto"><%=productService.countProductOfCategories(c.getCategoryId())%></span>
                                </a>
                            </li>
                            <% } %>
                        </ul>
                    </div>

                    <%--                    <div class="border p-4 rounded mb-4">--%>
                    <%--                        <h3>Filter by</h3>--%>
                    <%--                        <div class="mb-4">--%>
                    <%--                            <h3 class="mb-3 h6 text-uppercase text-black d-block">Price</h3>--%>
                    <%--                            <div id="slider-range" class="border-primary"></div>--%>
                    <%--                            <input type="text" name="text" id="amount" class="form-control border-0 pl-0 bg-white"--%>
                    <%--                                   disabled=""/>--%>
                    <%--                        </div>--%>

                    <%--                        <div class="mb-4">--%>
                    <%--                            <h3 class="mb-3 h6 text-uppercase text-black d-block">Color</h3>--%>
                    <%--                            <c:forEach item="${list}" var="item">--%>
                    <%--                                <a href="#" class="d-flex color-item align-items-center">--%>
                    <%--                                    <span class="bg-danger color d-inline-block rounded-circle mr-2"></span> <span--%>
                    <%--                                        class="text-black">${item.colorName} xxx</span>--%>
                    <%--                                </a>--%>
                    <%--                            </c:forEach>--%>
                    <%--                        </div>--%>
                </div>
            </div>
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

<script src="view/js/main1.js"></script>

</body>
</html>