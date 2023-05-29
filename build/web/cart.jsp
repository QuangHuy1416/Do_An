<%@include file="./inc/header_cart.jsp"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div class="shopping-cart-wrap container">
    <div class="row">
        <div class="product-list-wrap col-md-7">
            <div class="before-cart">
                <div class="before-cart-item border">
                    <p>You are out of time! Checkout now to avoid losing your order!</p>
                </div>
                <div class="before-cart-item border">
                    <div class="before-cart-item-top">
                        <img src="./assets/image/truck_icon.png" alt="icon">
                        <p>Spend <strong>$135.00</strong> to get free shipping</p>
                    </div>
                    <progress class="cart-progress-bar" max="100" value="61"></progress>
                </div>
            </div>
            <div class="product-list">
                <table>
                    <tr class="border-bottom">
                        <th class="product-detail">PRODUCT</th>
                        <th class="product-price">PRICE</th>
                        <th class="product-quantity">QUANTITY</th>
                        <th class="product-subtotal">SUBTOTAL</th>
                    </tr>
                    <c:forEach items="${cart}" var="orderItem">
                        <tr>
                            <td class="product-detail">
                                <div class="product-detail-wrap">
                                    <a href="${ProductDetailServlet}" class="product-img">
                                        <img src="${orderItem.product.thumbnail}" alt="product">
                                    </a>
                                    <div class="product-name-wrap">
                                        <a href="#" class="product-name">${orderItem.product.name}</a>
                                        <!--<a href="CartServlet?productId=${orderItem.productId},action=delete" class="remove-product"><span>Remove</span></a>-->
                                        <form action="CartServlet" method="post" class="remove-product">
                                            <input type="hidden" name="action" value="delete"/>
                                            <input type="hidden" name="productId" value="${orderItem.productId}"/>
                                            <button class="btn-cart" type="submit" value=""><i class="fa-solid fa-trash"></i>Remove</button>
                                        </form>
                                    </div>
                                </div>
                            </td>
                            <td class="product-price">
                                <span>
                                    <fmt:setLocale value = "en_US"/>
                                    <fmt:formatNumber type="currency" value = "${orderItem.product.price}" />
                                </span>
                            </td>
                            <td class="product-quantity">  
                                <form action="CartServlet" method="post"  class="product-quantity">
                                    <input type="hidden" name="action" value="update"/>
                                    <input type="hidden" name="productId" value="${orderItem.productId}"/>
                                    <input onchange="this.form.submit()" name="quantity" type="number" value="${orderItem.quantity}" min="1"/>
                                </form>
                            </td>
                            <td class="product-subtotal">
                                <span>
                                    <fmt:setLocale value = "en_US"/>
                                    <fmt:formatNumber type="currency" value = "${orderItem.product.price * orderItem.quantity}" />
                                </span>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="action-clear">
                <div class="coupon">
                    <form action="#" method="get" class="row">
                        <input type="text" class="coupon-code border" placeholder="Coupon code" value="${Messages}">
                        <button class="coupon-btn">OK</button>
                    </form>
                </div>
                <div class="shoppping-cart-btn">
                    <a href="#"><i class="fa-sharp fa-solid fa-trash"></i> Clear Shopping Cart</a>
                </div>
            </div>
        </div>
        <div class="cart-total col-md-5">
            <div class="cart-collaterals row">
                <h2>CART TOTALS</h2>
                <div class="cart-subtatol border-top">
                    <p>Subtotal</p>
                    <p>
                        <fmt:setLocale value = "en_US"/>
                        <fmt:formatNumber type="currency" value = "${total}" />
                    </p>
                </div>
                <div class="cart-tatol border-top">
                    <p>TATOL</p>
                    <p>
                        <fmt:setLocale value = "en_US"/>
                        <fmt:formatNumber type="currency" value = "${total}" />
                    </p>
                </div>
                <div class="checkout-btn">
                    <a href="CheckoutServlet">Proceed To Checkout</a>
                </div>
                <div class="shoppping-cart-btn">
                    <a href="ProductServlet" class="back-product-btn">Continue Shopping</a>
                </div>
            </div>
            <div class="pay-methods margin-for-div">
                <fieldset class="border rounded-3 p-3">
                    <legend class="float-none w-auto px-3">
                        GUARANTEED <span>SAFE</span> CHECKOUT
                    </legend>
                    <div class="mt-list">
                        <div class="mt-item">
                            <span class="method-mes border">Pay safe with Visa</span>
                            <img src="./assets/image/pay_methods/visa.jpeg" alt="pay_method" class="logo-method border">
                        </div>
                        <div class="mt-item">
                            <span class="method-mes border">Pay safe with Master Card</span>
                            <img src="./assets/image/pay_methods/master-card.jpeg" alt="pay_method" class="logo-method border">
                        </div>
                        <div class="mt-item">
                            <span class="method-mes border">Pay safe with Paypal</span>
                            <img src="./assets/image/pay_methods/paypal.jpeg" alt="pay_method" class="logo-method border">
                        </div>
                        <div class="mt-item">
                            <span class="method-mes border">Pay safe with American Express</span>
                            <img src="./assets/image/pay_methods/american-express.jpeg" alt="pay_method" class="logo-method border">
                        </div>
                        <div class="mt-item">
                            <span class="method-mes border">Pay safe with Bitcoin</span>
                            <img src="./assets/image/pay_methods/bitcoin.jpeg" alt="pay_method" class="logo-method border">
                        </div>
                    </div>
                </fieldset>
                <span class="pay-methods-bottom">Your Payment is 100% Secure</span>
            </div>
        </div>
    </div>
</div>
<%@include file="./inc/footer_cart.jsp"%>