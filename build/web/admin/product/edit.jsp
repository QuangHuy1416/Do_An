<%@include file="../inc/indexAdmin.jsp" %>
<form action="EditProductServlet" method="post" enctype="multipart/form-data">
    <input type="hidden" name="productId" value="${product.id}">
    <div class="form-group">
        <div class="row">
            <c:forEach items="${product.galleries}" var="photo">
                <div class="col-md-3">
                    <img class="p-thumbnail" src="${photo.url}" alt="alt"/>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Picture</label>
        <input type="file" name="photos" multiple="multiple" />
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Name</label>
        <input type="text" name="name" class="form-control" placeholder="Enter name" value="${product.name}">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Description</label>
        <input type="text" name="description" class="form-control" placeholder="Enter Description" value="${product.description}">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Category</label>
        <select name="categoryId" class="form-control">
            <c:forEach items="${categoryList}" var="cat">
                <option <c:if test="${cat.id == category.id}">selected</c:if>  value="${cat.id}">${cat.name}</option>
            </c:forEach>
        </select>
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Price</label>
        <input type="text" name="price" class="form-control" placeholder="Enter Price" value="${product.price}">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Quantity</label>
        <%--<c:if test="${errorsQuantity != null}">--%>
            <!--<input type="number" name="quantity" class="form-control" placeholder="${errorsQuantity}">-->
        <%--</c:if>--%>
        <%--<c:if test="${errorsQuantity == null}">--%>
            <!--<input type="number" name="quantity" class="form-control" placeholder="Enter Quantity" value="${product.quantity}">-->
        <%--</c:if>--%>
        <input type="number" name="quantity" class="form-control" placeholder="Enter Quantity" value="${product.quantity}">
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<%@include file="../inc/footer.jsp" %>