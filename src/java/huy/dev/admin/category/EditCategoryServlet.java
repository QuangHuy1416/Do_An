/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin.category;

import huy.dev.BaseServlet;
import huy.dev.data.DAO.CategoryDAO;
import huy.dev.data.DAO.DatabaseDAO;
import huy.dev.data.model.Category;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author KAY
 */
public class EditCategoryServlet extends BaseServlet {
  @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Category category = DatabaseDAO.getInstance().getCategoryDAO().find(categoryId);
        
        request.setAttribute("category", category);
        request.getRequestDispatcher("admin/category/edit.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDAO categoryDao = DatabaseDAO.getInstance().getCategoryDAO();
        
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Category category = categoryDao.find(categoryId);
        
        String name = request.getParameter("name");
        String thumbnail = request.getParameter("thumbnail");
        
        category.setName(name);
        category.setThumbnail(thumbnail);
        
        categoryDao.update(category);
        
        response.sendRedirect("IndexCategoryServlet");
    }
}
