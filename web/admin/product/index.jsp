<%@include file="../inc/indexAdmin.jsp" %>
<h1 class="h3 mb-2 text-gray-800">Products</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Product List</h6>
    </div>
    <div class="card-body">

        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Order</th>
                        <th>Picture</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>View</th>
                        <th>Category</th>
                        <th>#</th>
                        <th>#</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="index" value="0"/>
                    <c:forEach items="${productList}" var="product">
                        <c:set var="index" value="${index + 1}"/>
                        <tr>
                            <td>${index}</td>
                            <td>
                                <img src="${product.thumbnail}" width="50" height="50" alt="alt"/>
                            </td>
                            <td>${product.name}</td>
                            <td>${product.description}</td>
                            <td>${product.price}</td>
                            <td>${product.quantity}</td>
                            <td>${product.view}</td>
                            <td>${product.category.name}</td>
                            <td>
                                <a href="EditProductServlet?productId=${product.id}">Edit</a>
                            </td>
                            <td>
                                <a href="DeleteProductServlet?productId=${product.id}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>
<%@include file="../inc/footer.jsp" %>