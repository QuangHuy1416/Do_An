/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev;

import huy.dev.data.DAO.Database;
import huy.dev.data.DAO.DatabaseDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;

public class BaseServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        DatabaseDAO.init(new Database());
    }

}
