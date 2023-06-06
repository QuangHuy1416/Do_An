/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev;

import huy.dev.data.DAO.DatabaseDAO;
import huy.dev.data.DAO.OrderDAO;
import huy.dev.data.model.Order;
import huy.dev.data.model.OrderItem;
import huy.dev.data.model.User;
import static huy.dev.data.util.Faker.randomCode;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author KAY
 */
public class CheckoutServlet extends BaseServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
//            response.setHeader("referer", "CheckoutServlet");
//            response.sendRedirect("LoginServlet?referer=CheckoutServlet");
            response.sendRedirect("LoginServlet");
        } else {
            processCheckout(request, user.getId());
            response.sendRedirect("CartServlet");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    private void processCheckout(HttpServletRequest request, int id) {
        OrderDAO orderDao = DatabaseDAO.getInstance().getOrderDAO();
        Order order = new Order(randomCode(8), Order.PENDING, id);
//        Order order = new Order(randomCode(8), "PANDING", id);
        orderDao.insert(order);

        order = orderDao.findByCode(order.getCode());
        HttpSession session = request.getSession();
        List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");
        if (cart != null) {
            for (OrderItem orderItem : cart) {
                orderItem.setOrderId(order.getId());
                DatabaseDAO.getInstance().getOrderItemDAO().insert(orderItem);
            }
        }
        session.setAttribute("Messages", "Checkout Success");
        session.removeAttribute("cart");
    }
}

