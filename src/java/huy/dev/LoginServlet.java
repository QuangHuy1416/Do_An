/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev;

import com.oracle.wls.shaded.org.apache.bcel.generic.BREAKPOINT;
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
public class LoginServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") != null) {
            response.sendRedirect("HomeServlet");
        }

        request.getRequestDispatcher("login.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO userDAO = Database.getInstance().getUserDAO();
        User user = userDAO.find(email);

        if (user == null) {
            response.sendRedirect("LoginServlet");
            session.setAttribute("errorsEmail", "Invalid email *");
        } else {
            if (user.getPassword().equals(password)) {
                if (user.getRole().equals("User")) {
                    response.sendRedirect("HomeServlet");
                    session.setAttribute("user", user);
                }
                if (user.getRole().equals("Admin")) {
                    response.sendRedirect("DashboardServlet");
                    session.setAttribute("user", user);
                }
            } else {
                response.sendRedirect("LoginServlet");
                session.setAttribute("email", email);
                session.setAttribute("errorsPassword", "Invalid Password *");
            }
        }
    }

}
