package Repository.productDetail;

import Model.ProductDetails;
import Repository.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDetailRepoImplement extends DBConnect implements IProductDetailRepo {
    @Override
    public void addProductDetail(ProductDetails product) throws SQLException {
        String query = "INSERT INTO Product_Details (product_detail_id, product_id, size_id, color_id, image_id, stock) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, product.getProductDetailId());
            statement.setInt(2, product.getProductId());
            statement.setInt(3, product.getSizeId());
            statement.setInt(4, product.getColorId());
            statement.setInt(5, product.getImageId());
            statement.setInt(6, product.getStock());
            statement.executeUpdate();
        }
    }

    @Override
    public void updateProductDetail(ProductDetails product) throws SQLException {
        String query = "UPDATE Product_Details SET product_id = ?, size_id = ?, color_id = ?, image_id = ?, stock = ? WHERE product_detail_id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, product.getProductId());
            statement.setInt(2, product.getSizeId());
            statement.setInt(3, product.getColorId());
            statement.setInt(4, product.getImageId());
            statement.setInt(5, product.getStock());
            statement.setInt(6, product.getProductDetailId());
            statement.executeUpdate();
        }
    }

    @Override
    public void deleteProductDetail(ProductDetails product) throws SQLException {
        String query = "DELETE FROM Product_Details WHERE product_detail_id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, product.getProductDetailId());
            statement.executeUpdate();
        }
    }

    @Override
    public ProductDetails getProductDetail() throws SQLException {
        String query = "SELECT * FROM Product_Details";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    ProductDetails product = new ProductDetails();
                    product.setProductDetailId(resultSet.getInt("product_detail_id"));
                    product.setProductId(resultSet.getInt("product_id"));
                    product.setSizeId(resultSet.getInt("size_id"));
                    product.setColorId(resultSet.getInt("color_id"));
                    product.setImageId(resultSet.getInt("image_id"));
                    product.setStock(resultSet.getInt("stock"));
                    return product;
                }
            }
        }
        return null;
    }
}
