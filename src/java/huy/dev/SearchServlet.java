/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev;

import huy.dev.data.DAO.DatabaseDAO;
import huy.dev.data.DAO.ProductDAO;
import huy.dev.data.model.Product;
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
public class SearchServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        String key = request.getParameter("key");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        ProductDAO productDao = DatabaseDAO.getInstance().getProductDAO();
        List<Product> productList = new ArrayList<Product>();

        if (categoryId == 0) {
            productList = productDao.findByName(key);
        } else {
                productList = productDao.findByCategoryAndName(categoryId, key);
        }
        
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("search.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
