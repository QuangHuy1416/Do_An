<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link rel="stylesheet" href="./fonts/themify-icons/themify-icons.css" />
        <link rel="stylesheet" href="./fonts/fontawesome-free-6.4.0-web/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="./assets/css/header_css.css" />
        <link rel="stylesheet" href="./assets/css/product_detail_css.css" />
        <link rel="stylesheet" href="./assets/css/shopping_cart_css.css" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <title>Kay Store</title>
    </head>
    <body>
        <div class="shopping-cart-header border-bottom">
            <header class="container">
                <div class="row">
                    <div class="header-with-logo col-md-6">
                        <a href="#" class="header-with-link">
                            <img src="./assets/image/Logo-min.jpg" alt="xstore" class="header-with-img"/>
                        </a>
                    </div>
                    <div class="shopping-cart-action col-md-6">
                        <a class="action-item first-action" href="#">
                            <span class="action-number ">1</span>
                            SHOPPING CART
                        </a>
                        <span> > </span>
                        <a class="action-item second-action" href="#">
                            <div class="action-number  border">2</div>
                            CHECKOUT
                        </a>
                        <span> > </span>
                        <a class="action-item second-action" href="#">
                            <div class="action-number  border">3</div>
                            ORDER STATUS
                        </a>
                    </div>
                </div>
            </header>
        </div>
    </body>
</html>
