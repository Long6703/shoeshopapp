package Repository.productRepo;

import Model.Products;
import Model.Users;

import java.sql.SQLException;
import java.util.List;

public interface IproductRepo {
    public void addProduct(Products product) throws SQLException;
    public void updateProduct(Products product) throws SQLException;
    public void deleteProduct(Products product) throws SQLException;
    public List<Products> getAllProduct() throws SQLException;
}
