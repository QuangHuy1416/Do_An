/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin.product;

import huy.dev.BaseServlet;
import huy.dev.data.DAO.DatabaseDAO;
import huy.dev.data.DAO.GalleryDAO;
import huy.dev.data.model.Category;
import huy.dev.data.model.Gallery;
import huy.dev.data.model.Product;
import huy.dev.data.util.Constants;
import huy.dev.data.util.UploadFileHelper;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author KAY
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 50, // 50 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class CreateProductServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Category> categoryList = DatabaseDAO.getInstance().getCategoryDAO().findAll();
        
        request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("admin/product/create.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String des = request.getParameter("des");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Product product = new Product(name, des, price, quantity, categoryId);

        int productId = DatabaseDAO.getInstance().getProductDAO().insert(product);
        createGallery(productId, request);

        response.sendRedirect("IndexProductServlet");
    }

    private void createGallery(int productId, HttpServletRequest request) {
        GalleryDAO galleryDao = DatabaseDAO.getInstance().getGalleryDAO();
        List<String> photos = UploadFileHelper.uploadFile(Constants.UPLOAD_DIR, request);
        for (int i = 0; i < photos.size(); i++) {
            Gallery g = new Gallery(Constants.UPLOAD_DIR + "/" + photos.get(i), productId);
            galleryDao.insert(g);
        }
    }
}
