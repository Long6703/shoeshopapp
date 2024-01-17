package Repository.productRepo;

import Model.Products;
import Model.Users;

import java.sql.SQLException;
import java.util.List;

public interface IproductRepo {

    public List<Products> getLatestProduct() throws SQLException;
}