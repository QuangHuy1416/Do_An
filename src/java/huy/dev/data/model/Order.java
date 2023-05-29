package huy.dev.data.model;

import java.sql.Timestamp;

import huy.dev.data.DAO.DatabaseDAO;

public class Order {

    private int id;
    private String code;
    private String status;
    private int userId;
    private Timestamp createdAT;

    public static final String PENDING = "pending";
    public static final String FINISHED = "finish";

    public Order(String code, String status, int userId) {
        super();
        this.code = code;
        this.status = status;
        this.userId = userId;
    }

    public Order(int id, String code, String status, int userId, Timestamp createdAT) {
        super();
        this.id = id;
        this.code = code;
        this.status = status;
        this.userId = userId;
        this.createdAT = createdAT;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Timestamp getCreatedAT() {
        return createdAT;
    }

    public void setCreatedAT(Timestamp createdAT) {
        this.createdAT = createdAT;
    }

    public OrderItem getOrderItem() {
        return DatabaseDAO.getInstance().getOrderItemDAO().find(id);
    }
}
