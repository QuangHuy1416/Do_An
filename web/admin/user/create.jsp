<%@include file="../inc/indexAdmin.jsp" %>
<form action="CreateUserServlet" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Email</label>
        <input type="email" name="email" class="form-control" placeholder="Enter Email">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Enter password">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Repeat Password</label>
        <input type="password" name="repeatPass" class="form-control" placeholder="Enter Repeat Password">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1" >Role:</label>
        <select name="role" class="form-sub-select">
            <option value="User">User </option>
            <option value="Admin">Admin </option>
        </select>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<%@include file="../inc/footer.jsp" %>
