/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev;

import huy.dev.data.DAO.Database;
import huy.dev.data.DAO.UserDAO;
import huy.dev.data.model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author KAY
 */
public class RegisterServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("login.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();

        UserDAO userDAO = Database.getInstance().getUserDAO();
        User user = userDAO.find(email);
//        Kiểm tra thông tin đăng ký
        if (user != null) {
            request.setAttribute("errorMessage", "Accout Exist");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            User newUser = new User(email, password, null);
            userDAO.insert(newUser);
            session.setAttribute("user", newUser);
            response.sendRedirect("LoginServlet");
        }
    }
}
