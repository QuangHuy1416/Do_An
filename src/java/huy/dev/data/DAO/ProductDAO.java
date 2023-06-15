package huy.dev.data.DAO;

import java.util.List;

import huy.dev.data.model.Product;

public interface ProductDAO {

    public int insert(Product product);

    public boolean update(Product product);
    
    public boolean updateView(Product product);

    public boolean delete(int productId);

    public Product find(int productId);

    public List<Product> findAll();

    public List<Product> findByCategory(int id);

    public List<Product> hot();

    public List<Product> relatedProductList(Product product);

    public List<Product> findByName(String key);
    
     public List<Product> findByCategoryAndName(int categoryId, String key);
}
