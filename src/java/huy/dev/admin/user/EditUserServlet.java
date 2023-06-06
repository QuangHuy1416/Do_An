/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin.user;

import huy.dev.BaseServlet;
import huy.dev.data.DAO.DatabaseDAO;
import huy.dev.data.DAO.UserDAO;
import huy.dev.data.model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author KAY
 */
public class EditUserServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        User user = DatabaseDAO.getInstance().getUserDAO().find(userId);
        request.setAttribute("user", user);
        request.getRequestDispatcher("admin/user/edit.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO userDao = DatabaseDAO.getInstance().getUserDAO();
        int userId = Integer.parseInt(request.getParameter("userId"));
        User user = userDao.find(userId);
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        user.setEmail(email);
        user.setPassword(password);
        user.setRole(role);

        userDao.update(user);

        response.sendRedirect("IndexUserServlet");
    }

}
