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
                        <th>Email</th>
                        <th>Pass</th>
                        <th>Role</th>
                        <th>#</th>
                        <th>#</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="index" value="0"/>
                    <c:forEach items="${userList}" var="user">
                        <c:set var="index" value="${index + 1}"/>
                        <tr>
                            <td>${index}</td>
                            <td>${user.email} </td>
                            <td>${user.password}</td>
                            <td>${user.role}</td>
                            <td>
                                <a href="EditUserServlet?userId=${user.id}">Edit</a>
                            </td>
                            <td>
                                <a href="DeleteUserServlet?userId=${user.id}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>
<%@include file="../inc/footer.jsp" %>