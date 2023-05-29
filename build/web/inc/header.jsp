<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Kay Store</title>
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
                        <a href="#" class="header-with-link">
                            <img src="./assets/image/Logo-min.jpg" alt="xstore" class="header-with-img"/>
                        </a>
                    </div>
                    <div class="header-search">
                        <form class="header-search-content" action="SearchServlet" method="get">
                            <div class="select-wrap">
                                <select name="categories-menu" class="header-search-select">
                                    <option class="level-0" value="all-categories">All categories</option>
                                    <option class="level-0" value="dinning-bar">Dinning & Bar</option>
                                    <option class="level-1" value="bar-furniture">Bar Furniture</option>
                                    <option class="level-1" value="barware">Barware</option>
                                    <option class="level-1" value="dining-furniture">Dining Furniture</option>
                                    <option class="level-1" value="dinnerware">Dinnerware</option>
                                    <option class="level-1" value="serveware">Serveware</option>
                                    <option class="level-1" value="teaware">Teaware</option>
                                    <option class="level-0" value="furnishings">Furnishings</option>
                                    <option class="level-1" value="bed-linen">Bed Linen</option>
                                    <option class="level-1" value="clocks">Clocks</option>
                                    <option class="level-1" value="curtains">Curtains</option>
                                    <option class="level-1" value="cushion-Cover">Cushion & Cover</option>
                                    <option class="level-1" value="mirrors">Mirrors</option>
                                    <option class="level-1" value="wall-cabinate">Wall Cabinate</option>
                                    <option class="level-0" value="furniture">Furniture</option>
                                    <option class="level-1" value="chairs">Chairs</option>
                                    <option class="level-1" value="home-office">Home Office</option>
                                    <option class="level-1" value="recliners">Recliners</option>
                                    <option class="level-1" value="seating">Seating</option>
                                    <option class="level-0" value="lighting">Lighting</option>
                                    <option class="level-1" value="ceiling-lights">Ceiling Lights</option>
                                    <option class="level-1" value="outdoor-lights">Outdoor Lights</option>
                                    <option class="level-1" value="table-lamps">Table Lamps</option>
                                    <option class="level-1" value="wall-lights">Wall Lights</option>
                                    <option class="level-0" value="mattresses">Mattresses</option>
                                    <option class="level-1" value="drinkware">Drinkware</option>
                                    <option class="level-1" value="king-size-beds">King Size Beds</option>
                                    <option class="level-1" value="queen-size-beds">Queen Size Beds</option>
                                    <option class="level-1" value="single-beds">Single Beds</option>
                                    <option class="level-0" value="our-selections">Our Selections</option>
                                    <option class="level-1" value="bedroom">Bedroom</option>
                                    <option class="level-1" value="Dining Room">Dining Room</option>
                                    <option class="level-1" value="living-room">Living Room</option>
                                    <option class="level-1" value="study-room">Study Room</option>
                                    <option class="level-0" value="outdoor-2">Outdoor</option>
                                    <option class="level-1" value="arificial-plants">Arificial Plants</option>
                                    <option class="level-1" value="garden-decor">Garden Decor</option>
                                    <option class="level-1" value="natural-plants">Natural Plants</option>
                                    <option class="level-1" value="outdoor-furniture">Outdoor Furniture</option>
                                    <option class="level-1" value="planter-stands">Planter Stands</option>
                                    <option class="level-1" value="pots-planters">Planters</option>
                                    <option class="level-0" value="storage">Storage</option>
                                    <option class="level-1" value="bar-furniture">Bar Furniture</option>
                                    <option class="level-1" value="book-cases">Book Cases</option>
                                    <option class="level-1" value="entertainment">Entertainment</option>
                                    <option class="level-1" value="outdoor">Outdoor</option>
                                    <option class="level-1" value="shoe-racks">Shoe Racks</option>
                                    <option class="level-1" value="wardrobes">Wardrobes</option>
                                    <option class="level-0" value="wall-accents">Wall Accents</option>
                                    <option class="level-1" value="canvas-paintings">Canvas Paintings</option>
                                    <option class="level-1" value="photoframes">Photoframes</option>
                                    <option class="level-1" value="wall-art">Wall Art</option>
                                    <option class="level-1" value="wall-shelves">Wall Shelves</option>
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
                            <a class="menu-link" href="CartServlet"><i class="fa-solid fa-cart-shopping"></i>&nbspCart $0.00</a>
                        </div>
                    </div>
                </div>
                <div class="header-bottom">
                    <div class="wrap-column">
                        <ul class="menu-list">
                            <li class="menu-item logo-img">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-01.png" alt="chairs" /><br><span>Chairs</span></a>
                            </li>
                            <li class="menu-item logo-img">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-02.png" alt="outdoor" /><br><span>Outdoor</span></a>
                            </li>
                            <li class="menu-item logo-img">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-03.png" alt="storage" /><br><span>Storage</span></a>
                            </li>
                            <li class="menu-item logo-img">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-04.png" alt="dinnerware"/><br><span>Dinnerware</span></a
                                >
                            </li>
                            <li class="menu-item logo-img">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-05.png" alt="furnishings"/><br><span>Furnishings</span></a>
                            </li>
                            <li class="menu-item logo-img">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-06.png" alt="lighting" /><br><span>Lighting</span></a>
                            </li>
                            <li class="menu-item logo-img">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-07.png" alt="curtains" /><br><span>Curtains</span></a>
                            </li>
                            <li class="menu-item logo-img">
                                <a href="ProductServlet" class="menu-link"><img src="./assets/image/icon-08.png" alt="mirrors" /><br><span>Mirrors</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
