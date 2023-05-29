package huy.dev.data.DAO;

import java.util.List;

import huy.dev.data.model.Order;

public interface OrderDAO {

    public boolean insert(Order order);

    public boolean update(Order order);

    public boolean delete(int orderId);

    public Order find(int orderId);

    public List<Order> findAll();

    public List<Order> findByUser(int id);

    public Order findByCode(String code);
}
