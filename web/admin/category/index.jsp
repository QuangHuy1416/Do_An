<%@include file="../inc/indexAdmin.jsp" %>
<h1 class="h3 mb-2 text-gray-800">Categories</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Category List</h6>
    </div>
    <div class="card-body">

        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Order</th>
                        <th>Thumbnail</th>
                        <th>Name</th>
                        <th>#</th>
                        <th>#</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="index" value="0"/>
                    <c:forEach items="${categoryList}" var="category">
                        <c:set var="index" value="${index + 1}"/>
                        <tr>
                            <td>${index}</td>
                            <td>
                                ${category.thumbnail}
                                <!--<img src="${category.thumbnail}" width="50" height="50" alt="alt"/>-->
                            </td>
                            <td>${category.name}</td>
                            <td>
                                <a href="EditCategoryServlet?categoryId=${category.id}">Edit</a>
                            </td>
                            <td>
                                <a href="DeleteCategoryServlet?categoryId=${category.id}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>
<%@include file="../inc/footer.jsp" %>