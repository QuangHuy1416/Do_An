<%@include file="../inc/indexAdmin.jsp" %>
<form action="EditOrderServlet" method="post">
    <input type="hidden" name="orderId" value="${order.id}">
    <div class="form-group">
        <label for="exampleInputEmail1">Code</label>
        <input type="text" name="code"  class="form-control" placeholder="Enter Code" value="${order.code}">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Status</label>
        <select name="status" class="form-control">
            <option value="pending" <c:if test="${order.status == 'pending'}">selected</c:if>>Pending</option>
            <option value="finished" <c:if test="${order.status == 'finished'}">selected</c:if>>Finished</option>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">User Email</label>
            <input type="text" name="email" class="form-control" value="${order.user.email}" readonly>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<%@include file="../inc/footer.jsp" %>