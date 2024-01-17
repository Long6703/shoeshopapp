package Repository.productDetail;

import Model.ProductDetails;

import java.sql.SQLException;
import java.util.List;

public interface IProductDetailRepo {
    public void addProductDetail(ProductDetails product) throws SQLException, SQLException, SQLException;
    public void updateProductDetail(ProductDetails product) throws SQLException;
    public void deleteProductDetail(ProductDetails product) throws SQLException;
    public ProductDetails getProductDetail() throws SQLException;
}
