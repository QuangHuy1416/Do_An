<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Kay Furniture Store</title>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link rel="stylesheet" href="./assets/fonts/themify-icons/themify-icons.css" />
        <link rel="stylesheet" href="./assets/fonts/fontawesome-free-6.4.0-web/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="./assets/css/header_css.css" />
        <link rel="stylesheet" href="./assets/css/product_home_css.css" />
        <link rel="stylesheet" href="./assets/css/product_css.css" />
        <link rel="stylesheet" href="./assets/css/product_detail_css.css" />
        <link rel="stylesheet" href="./assets/css/login_css.css" />
        <link rel="stylesheet" href="./assets/css/footer_css.css" />
    </head>
    <body>
        <header id="header">
            <div class="header-wrapper">
                <div class="header-top wrap-column">
                    <div class="header-with-logo">
                        <a href="HomeServlet" class="header-with-link">
                            <img src="./assets/image/Logo-min.jpg" alt="xstore" class="header-with-img"/>
                        </a>
                    </div>
                    <div class="header-search">
                        <form class="header-search-content" action="SearchServlet" method="get">
                            <div class="select-wrap">
                                <select name="categoryId" class="header-search-select">
                                    <option selected value="0">All Category</option>
                                    <c:forEach items="${categoryList}" var="category">
                                        <option value="${category.id}">${category.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="header-search-wrap">
                                <input type="text" name="key" class="header-search-input" id="search" placeholder="Search for..."/>
                            </div>
                            <button type="submit" class="header-search-btn btn btn-dark">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </form>
                    </div>
                    <div class="header-top-right">
                        <c:if test="${sessionScope.user != null}">
                            <a href="LoginServlet" class="header-link"><span><i class="fa-solid fa-user"></i>&nbsp${sessionScope.user.email}</span></a>
                            <span> / </span>
                            <a href="LogoutServlet" class="log-out">Log Out</span></a>
                        </c:if>
                        <c:if test="${sessionScope.user == null}">
                            <a href="LoginServlet" class="header-link"><span><i class="fa-solid fa-user"></i>&nbspSign in</span></a>
                                    </c:if>
                        <a href="#" class="header-link"><span><i class="fa-solid fa-arrows-rotate"></i>&nbspCompare</span></a>
                        <a href="#" class="header-link"><span><i class="fa-regular fa-heart"></i>&nbspWishlist</span></a>
                    </div>
                </div>
                <div class="header-main-wrap">
                    <div class="header-main wrap-column">
                        <div class="navbar-wrap">
                            <ul class="menu-list">
                                <li class="menu-item"><a class="menu-link" href="HomeServlet"><span>Home</span></a></li>
                                <li class="menu-item"><a class="menu-link" href="ProductServlet"><span>Element</span></a></li>
                                <li class="menu-item"><a class="menu-link" href="#"><span>Shop</span></a></li>
                                <li class="menu-item"><a class="menu-link" href="#"><span>Blog</span></a></li>
                                <li class="menu-item"><a class="menu-link" href="#"><span>About us</span></a></li>
                                <li class="menu-item"><a class="menu-link" href="#"><span>Contact us</span></a></li>
                                <li class="menu-item"><a class="menu-link" href="#"><span>Track your order</span></a></li>
                            </ul>
                        </div>
                        <div class="cart-link">

                            <c:if test="${sessionScope.cart != null}">
                                <a class="menu-link" href="CartServlet"><i class="fa-solid fa-cart-shopping"></i>&nbspCart $${total}</a>
                            </c:if>
                            <c:if test="${sessionScope.cart == null}">
                                <a class="menu-link" href="CartServlet"><i class="fa-solid fa-cart-shopping"></i>&nbspCart $0.00</a>
                            </c:if>
                        </div>
                    </div>
                </div>
                <div class="header-bottom">
                    <div class="wrap-column">
                        <ul class="menu-list">
                            <li class="menu-item">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-01.png" alt="chairs" /><br><span>Chairs</span></a>
                            </li>
                            <li class="menu-item">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-02.png" alt="outdoor" /><br><span>Outdoor</span></a>
                            </li>
                            <li class="menu-item">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-03.png" alt="storage" /><br><span>Storage</span></a>
                            </li>
                            <li class="menu-item">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-04.png" alt="dinnerware"/><br><span>Dinnerware</span></a
                                >
                            </li>
                            <li class="menu-item">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-05.png" alt="furnishings"/><br><span>Furnishings</span></a>
                            </li>
                            <li class="menu-item">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-06.png" alt="lighting" /><br><span>Lighting</span></a>
                            </li>
                            <li class="menu-item">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-07.png" alt="curtains" /><br><span>Curtains</span></a>
                            </li>
                            <li class="menu-item">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-08.png" alt="mirrors" /><br><span>Mirrors</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
