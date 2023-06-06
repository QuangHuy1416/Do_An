/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin;

import huy.dev.BaseServlet;
import huy.dev.data.DAO.DatabaseDAO;
import huy.dev.data.DAO.OrderItemDAO;
import huy.dev.data.model.OrderItem;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author KAY
 */
public class ShowOrderItemServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        OrderItemDAO orderItemDao = DatabaseDAO.getInstance().getOrderItemDAO();

        List<OrderItem> orderItemList = orderItemDao.findByOrder(orderId);

        request.setAttribute("orderItemList", orderItemList);
        request.getRequestDispatcher("admin/showOrderItem.jsp").include(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
