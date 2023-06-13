/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev;

import huy.dev.data.DAO.Database;
import huy.dev.data.DAO.DatabaseDAO;
import huy.dev.data.model.Category;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author KAY
 */
public class BaseServlet extends HttpServlet {

     @Override
    public void init() throws ServletException {
        DatabaseDAO.init(new Database());
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Category> categoryList = DatabaseDAO.getInstance().getCategoryDAO().findAll();
        request.setAttribute("categoryList", categoryList);
    }

}
