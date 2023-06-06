/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin;

import huy.dev.data.DAO.DatabaseDAO;
import huy.dev.data.DAO.OrderDAO;
import huy.dev.data.DAO.ProductDAO;
import huy.dev.data.DAO.UserDAO;
import huy.dev.data.model.Order;
import huy.dev.data.model.OrderItem;
import huy.dev.data.model.Product;
import huy.dev.data.util.Constants;
import huy.dev.data.util.GetDateTime;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author KAY
 */
public class DashboardServlet extends BaseAdminServlet {
 @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        UserDAO userDao = DatabaseDAO.getInstance().getUserDAO();
        int numberUser = userDao.findAll().size();

        ProductDAO productDao = DatabaseDAO.getInstance().getProductDAO();
        List<Product> productList = productDao.findAll();
        int numberProduct = productDao.findAll().size();

        OrderDAO orderDao = DatabaseDAO.getInstance().getOrderDAO();
        int numberOrder = orderDao.findAll().size();
        double total = getTotal();

        request.setAttribute("numberUser", numberUser);
        request.setAttribute("numberProduct", numberProduct);
        request.setAttribute("numberOrder", numberOrder);
        request.setAttribute("total", total);
        request.setAttribute("productList", productList);

        List<Order> orderPendingList = orderDao.findByStatus("pending");
        request.setAttribute("orderPendingList", orderPendingList);
        request.setAttribute("countOrderPendingList", orderPendingList.size());
        
        List<Order> orderFinishList = orderDao.findByStatus("finished");
        request.setAttribute("countOrderFinishList", orderFinishList.size());

        // Chart
        List<String> dateList = GetDateTime.getDates(Constants.NUMBER_DAY);
        request.setAttribute("dateList", dateList);
        List<Double> earningEachDay = new ArrayList<>();
         for(int i = 0; i < Constants.NUMBER_DAY; i++){
            earningEachDay.add(orderDao.earningOrderByDay(dateList.get(i)));
        }
        request.setAttribute("earningEachDay", earningEachDay);
        request.getRequestDispatcher("admin/dashboard.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    private double getTotal() {
        double total = 0;
        OrderDAO orderDao = DatabaseDAO.getInstance().getOrderDAO();
        List<Order> orderList = orderDao.findByStatus("finished");
        for (Order order : orderList) {
            List<OrderItem> orderItemList = DatabaseDAO.getInstance().getOrderItemDAO().findByOrder(order.getId());
            total += sum(orderItemList);
        }
        return total;
    }

    private double sum(List<OrderItem> orderItemList) {
        double s = 0;
        for (OrderItem orderItem : orderItemList) {
            s += orderItem.getQuantity() * orderItem.getPrice();
        }

        return s;
    }
}
