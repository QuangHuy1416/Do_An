/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin.order;

import huy.dev.BaseServlet;
import huy.dev.data.DAO.DatabaseDAO;
import huy.dev.data.DAO.OrderDAO;
import huy.dev.data.model.Order;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author KAY
 */
public class EditOrderServlet extends BaseServlet {

    OrderDAO orderDao = DatabaseDAO.getInstance().getOrderDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        Order order = orderDao.find(orderId);

        request.setAttribute("order", order);
        request.getRequestDispatcher("admin/order/edit.jsp").include(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int orderId = Integer.parseInt(request.getParameter("orderId"));

        Order order = orderDao.find(orderId);

        String status = request.getParameter("status");

        order.setStatus(status);

        orderDao.update(order);
        response.sendRedirect("IndexOrderServlet");
    }

}
