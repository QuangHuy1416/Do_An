<%-- 
    Document   : home
    Created on : May 27, 2023, 6:17:40?PM
    Author     : KAY
--%>

<%@include file="./inc/header.jsp"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div class="container">
    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="./assets/image/02-BANNER.jpg" class="banner-img" alt="banner">
            </div>
            <div class="carousel-item">
                <img src="./assets/image/banner_2.jpg" class="banner-img" alt="banner">
            </div>
            <div class="carousel-item">
                <img src="./assets/image/banner_3.jpg" class="banner-img" alt="banner">
            </div>
            <div class="carousel-item">
                <img src="./assets/image/banner_4.jpg" class="banner-img" alt="banner">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="content-outside row margin-for-div">
        <div class="box-content-wrap col-md-3">
            <div class="sticker-content">
                <img src="./assets/image/truck_icon.png" alt="icon">
            </div>
            <div class="box-content">
                <p class="main-content">Fastest Shipping</p>
                <p class="sub-content">Order at $39 order</p>
            </div>
        </div>
        <div class="box-content-wrap col-md-3">
            <div class="sticker-content">
                <img src="./assets/image/card_icon.png" alt="icon">
            </div>
            <div class="box-content">
                <p class="main-content">100% Safe Payments</p>
                <p class="sub-content">9 month installments</p>
            </div>
        </div>
        <div class="box-content-wrap col-md-3">
            <div class="sticker-content">
                <img src="./assets/image/box_icon.png" alt="icon">
            </div>
            <div class="box-content">
                <p class="main-content">14 - Days Return</p>
                <p class="sub-content">Shop with confidence</p>
            </div>
        </div>
        <div class="box-content-wrap col-md-3">
            <div class="sticker-content">
                <img src="./assets/image/mess_icon.png" alt="icon">
            </div>
            <div class="box-content">
                <p class="main-content">24/7 Online Support</p>
                <p class="sub-content">Delivered to home</p>
            </div>
        </div>
    </div>
    <div class="product-deal">
        <div class="deal-info">
            <h2>Deal of the month</h2>
            <span>
                Yes! Send me exclusive offers, personalised, and unique gift ideas, tips for shopping on XStore.
            </span>
            <div class="deal-home-button">
                <a href="ProductServlet">View All Product</a>
            </div>
        </div>
        <div class="deal-img">
            <img src="./assets/image/Image2-min.jpeg" alt="banner2" class="hover-img">
        </div>
    </div>
    <div class="all-categories margin-for-div">
        <h1>List Of All Categories</h1>
        <div class="all-categories-wrap margin-for-div">
            <div class="row">
                <div class="list-categories col-md-3">
                    <ul>
                        <li class="categories-link">
                            <a href="#" class="link-lv1">Furniture</a>
                        </li>
                        <li>
                            <ul>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Recliners</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Seating</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Chair</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Home Office</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="list-categories col-md-3">
                    <ul>
                        <li class="categories-link">
                            <a href="#" class="link-lv1">Mattresses</a>
                        </li>
                        <li>
                            <ul>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">King Size Beds</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Single Beds</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Queen Size Beds</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Drinkware</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="list-categories col-md-3">
                    <ul>
                        <li class="categories-link">
                            <a href="#" class="link-lv1">Wall Accents</a>
                        </li>
                        <li>
                            <ul>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Photoframes</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Wall Shelves</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Canvas Paintings</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Wall Art</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="list-categories col-md-3">
                    <ul>
                        <li class="categories-link">
                            <a href="#" class="link-lv1">Lighting</a>
                        </li>
                        <li>
                            <ul>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Table Lamps</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Wall Lights</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Ceiling Lights</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Outdoor Lights</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="list-categories col-md-3">
                    <ul>
                        <li class="categories-link">
                            <a href="#" class="link-lv1">Storage</a>
                        </li>
                        <li>
                            <ul>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Wardrobes</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Shoe Racks</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Book Cases</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Entertainment</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Outdoor</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Bar Furniture</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="list-categories col-md-3">
                    <ul>
                        <li class="categories-link">
                            <a href="#" class="link-lv1">Dinning & Bar</a>
                        </li>
                        <li>
                            <ul>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Dinnerware</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Serveware</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Barware</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Teaware</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Dinning Furniture</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Bar Furniture</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="list-categories col-md-3">
                    <ul>
                        <li class="categories-link">
                            <a href="#" class="link-lv1">Furnishings</a>
                        </li>
                        <li>
                            <ul>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Bed Linen</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Curtains</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Wall Cabinate</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Mirrors</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Clocks</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Cushion & Cover</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="list-categories col-md-3">
                    <ul>
                        <li class="categories-link">
                            <a href="#" class="link-lv1">Outdoor</a>
                        </li>
                        <li>
                            <ul>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Port & Planters</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Planters Stands</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Natural Plants</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Arificial Plants</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Garden Decor</a>
                                </li>
                                <li class="categories-link">
                                    <a href="#"  class="link-lv2">Outdoor Furniture</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="section1">
        <div class="section1-top">
            <h1 class="main-title"><span>Trending Products</span></h1>
            <span>In purus commodo ipsum dignissim ut eu</span>
        </div>

        <div class="section1-product">
            <div class="container">
                <div class="row">
                    <c:forEach items="${productList}" var="product">
                        <div class="border col-md-3 col-sm-6">
                            <div class="product-item">
                                <div class="thumbnail-wrap">
                                    <div class="img-link">
                                        <div class="img-product-wrap">
                                            <a href="ProductDetailServlet?productId=${product.id}">
                                                <img class="img-lv1" src="${product.thumbnail}" alt="product">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="footer-inner">
                                        <ul class="product-favourite">
                                            <li>
                                                <a href="#" class="text-action" class="text-action"><i class="fa-solid fa-cart-shopping"></i></a>
                                            </li>
                                            <li>
                                                <a href="#" class="text-action" class="text-action"><i class="fa-regular fa-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#" class="text-action"><i class="fa-solid fa-arrows-rotate"></i></a>
                                            </li>
                                            <li>
                                                <a href="#" class="text-action"><i class="fa-regular fa-eye"></i></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="home-product-footer">
                                <div class="home-product-category">
                                    <a href="ProductDetailServlet?productId=${product.id}">${product.category.name}</a>
                                </div>
                                <h2 class="home-product-name">
                                    <a href="ProductDetailServlet?productId=${product.id}">${product.name}</a>
                                </h2>
                                <span class="home-product-price">
                                    $${product.price}
                                </span>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

    <div class="categories-slide section1">
        <h1 class="main-title"><span>Shop Our Selection</span></h1>
        <span>Sem vitae tincidunt sed rhoncus</span>
        <div class="categories-slide-row margin-for-div">
            <div class="categories-slide-wrap border">
                <div class="img-frame">
                    <a href="#">
                        <img src="./assets/image/category-02-min.jpeg" alt="bedroom" class="hover-img">
                    </a>
                </div>
                <div class="selection-categories">
                    <a href="#">Bedroom</a>
                </div>
            </div>
            <div class="categories-slide-wrap border">
                <div class="img-frame">
                    <a href="#">
                        <img src="./assets/image/category-03-min.jpeg" alt="bedroom" class="hover-img">
                    </a>
                </div>
                <div class="selection-categories">
                    <a href="#">Dining Room</a>
                </div>
            </div>
            <div class="categories-slide-wrap border">
                <div class="img-frame">
                    <a href="#">
                        <img src="./assets/image/category-01-min.jpeg" alt="bedroom" class="hover-img">
                    </a>
                </div>
                <div class="selection-categories">
                    <a href="#">Living Room</a>
                </div>
            </div>
            <div class="categories-slide-wrap border">
                <div class="img-frame">
                    <a href="#">
                        <img src="./assets/image/category-04-min.jpeg" alt="bedroom" class="hover-img">
                    </a>
                </div>
                <div class="selection-categories">
                    <a href="#">Study Room</a>
                </div>
            </div>
        </div>
        <div class="logo-slide margin-for-div">
            <div class="logo-wrap logo-img">
                <a href="#"><img src="./assets/image/Logo_1.jpeg" alt="logo"></a>
            </div>
            <div class="logo-wrap logo-img">
                <a href="#"><img src="./assets/image/Logo_2.jpeg" alt="logo"></a>
            </div>
            <div class="logo-wrap logo-img">
                <a href="#"><img src="./assets/image/Logo_3.jpeg" alt="logo"></a>
            </div>
            <div class="logo-wrap logo-img">
                <a href="#"><img src="./assets/image/Logo_4.jpeg" alt="logo"></a>
            </div>
            <div class="logo-wrap logo-img">
                <a href="#"><img src="./assets/image/Logo_5.jpeg" alt="logo"></a>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
<%@include file="./inc/footer.jsp"%>

