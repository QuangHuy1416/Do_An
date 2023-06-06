<%@include file="./inc/indexAdmin.jsp" %>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th>Order</th>
            <th>Product</th>
            <th>Quantity</th>
            <th>Code</th>
            <th>Price</th>
            <th>Total</th>
        </tr>
    </thead>
    <tbody>
    <c:set var="index" value="0"/>
    <c:forEach items="${orderItemList}" var="orderItem">
        <c:set var="index" value="${index + 1}"/>
        <tr>
            <td>${index}</td>
            <td> <a href="OrderItemServlet?orderId=${orderItem.id}">${orderItem.product.name}</td>
            <td>${orderItem.quantity}</td>
            <td>${orderItem.order.code}</td>
            <td>
        <fmt:setLocale value = "en_US"/>
        <fmt:formatNumber type="currency" value = "${orderItem.price}" /> 
        </td>
        <td>
        <fmt:setLocale value = "en_US"/>
        <fmt:formatNumber type="currency" value = "${orderItem.price * orderItem.quantity}" /> 
        </td>

        </tr>
    </c:forEach>
</tbody>
</table>
<%@include file="./inc/footer.jsp" %>