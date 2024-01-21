package Repository.productRepo;

import Model.Products;

import java.sql.SQLException;
import java.util.List;

public interface IhomeproductRepo {

    public List<Products> getLatestProduct() throws SQLException;
}