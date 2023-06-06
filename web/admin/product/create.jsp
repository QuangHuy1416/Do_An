<%@include file="../inc/indexAdmin.jsp" %>
<form action="CreateProductServlet" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="exampleInputEmail1">Picture</label>
        <input type="file" name="photos" multiple="multiple" />
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Name</label>
        <input type="text" name="name" class="form-control" placeholder="Enter name">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Description</label>
        <input type="text" name="des" class="form-control" placeholder="Enter Description">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Category</label>
        <select name="categoryId" class="form-control">
            <c:forEach items="${categoryList}" var="category">
                <option value="${category.id}">${category.name}</option>
            </c:forEach>
        </select>
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Price</label>
        <input type="number" name="price" class="form-control" placeholder="Enter Price">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Quantity</label>
        <input type="number" name="quantity" class="form-control" placeholder="Enter Quantity">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<%@include file="../inc/footer.jsp" %>
