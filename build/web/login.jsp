<%-- 
    Document   : home
    Created on : May 27, 2023, 6:17:40?PM
    Author     : KAY
--%>

<%@include file="./inc/header.jsp"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div class="container">
    <div class="login-row">
        <div class="form-wrap border">
            <form action="LoginServlet" method="post" class="login-form">
                <h2>Login</h2>
                <label class="label-decor">Username or email address *</label>
                <input type="email" name="email" placeholder="${errorsEmail}" value="${email}" class="input-text" required>
                <c:remove var="errorsEmail" scope="session" />
                <label class="label-decor">Password *</label>
                <input type="password" name="password" placeholder="${errorsPassword}" class="input-text" required>
                <div class="check-login">
                    <div class="remember-pass">
                        <input class="input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever">
                        <p>Remember me</p>
                    </div>
                    <a href="#">Loss your password?</a>
                </div>
                <button class="login-btn btn btn-dark">Log In</button>
            </form>
        </div>
        <div class="form-wrap border">
            <form action="RegisterServlet" method="post" class="login-form">
                <h2>Register</h2>
                <label class="label-decor">Email address *</label>
                <input type="email" name="email" placeholder="${errorMessage}" class="input-text" required>
                <label class="label-decor">Password *</label>
                <input type="password" name="password" class="input-text" required>
                <button class="login-btn btn btn-dark">Register</button>
            </form>
        </div>
    </div>
</div>
<%@include file="./inc/footer.jsp"%>

