<%@include file="../inc/indexAdmin.jsp" %>
<form action="EditCategoryServlet" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Category Name</label>
        <input type="text" name="name" class="form-control" placeholder="Enter name" required>
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Thumbnail</label>
        <input type="text" name="thumbnail" class="form-control" placeholder="Enter link thumbnail" required>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<%@include file="../inc/footer.jsp" %>
