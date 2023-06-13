/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin.product;

import huy.dev.admin.BaseAdminServlet;
import huy.dev.data.DAO.DatabaseDAO;
import huy.dev.data.DAO.GalleryDAO;
import huy.dev.data.DAO.ProductDAO;
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
public class EditProductServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        Product product = DatabaseDAO.getInstance().getProductDAO().find(productId);
        List<Category> categoryList = DatabaseDAO.getInstance().getCategoryDAO().findAll();

        request.setAttribute("product", product);
        request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("admin/product/edit.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO productDAO = DatabaseDAO.getInstance().getProductDAO();

        int productId = Integer.parseInt(request.getParameter("productId"));
        Product product = productDAO.find(productId);

        String name = request.getParameter("name");
        String des = request.getParameter("des");
        double price = Double.parseDouble(request.getParameter("price"));

//        int quantity = 0;
//
//        try {
//            quantity = Integer.parseInt(request.getParameter("quantity"));
//        } catch (NumberFormatException e) {
//            HttpSession session = request.getSession();
//            response.sendRedirect("EditProductServlet");
//            session.setAttribute("errorsQuantity", "Invalid Quantity *");
//        }
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        product.setName(name);
        product.setDescription(des);
        product.setPrice(price);
        product.setQuantity(quantity);
        product.setCategoryId(categoryId);
        productDAO.update(product);
        updateGallery(product.getId(), request);
        response.sendRedirect("IndexProductServlet");
    }

    private void updateGallery(int productId, HttpServletRequest request) {
        GalleryDAO galleryDao = DatabaseDAO.getInstance().getGalleryDAO();
        galleryDao.deleteByProduct(productId);

        List<String> photos = UploadFileHelper.uploadFile(Constants.UPLOAD_DIR, request);
        for (int i = 0; i < photos.size(); i++) {
            Gallery g = new Gallery(Constants.UPLOAD_DIR + "/" + photos.get(i), productId);
            galleryDao.insert(g);
        }
    }
}
