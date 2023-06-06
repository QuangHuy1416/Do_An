<%@include file="../inc/indexAdmin.jsp" %>
<form action="EditUserServlet" method="post">
    <input type="hidden" name="userId" value="${user.id}">
    <div class="form-group">
        <label for="exampleInputEmail1">Email</label>
        <input type="email" name="email" class="form-control" placeholder="Enter Email" value="${user.email}" readonly="">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Password</label>
        <input type="text" name="password" class="form-control" placeholder="Enter Password" value="${user.password}">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Role</label>
        <select name="role" class="form-control">
            <option value="User">${user.role} </option>
            <option value="User">User </option>
            <option value="Admin">Admin </option>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<%@include file="../inc/footer.jsp" %>