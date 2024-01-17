package Repository.productRepo;

import Model.Products;
import Repository.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductRepoImplement extends DBConnect implements IproductRepo {
    @Override
    public void addProduct(Products product) throws SQLException {
        String query = "INSERT INTO Products (model, description, image, price, create_at, update_at, isActive) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, product.getModel());
            statement.setString(2, product.getDescription());
            statement.setString(3, product.getImage());
            statement.setFloat(4, product.getPrice());
            statement.setTimestamp(5, new Timestamp(product.getCreateAt().getTime()));
            statement.setTimestamp(6, new Timestamp(product.getUpdateAt().getTime()));
            statement.setBoolean(7, product.isActive());

            statement.executeUpdate();
        }
    }

    @Override
    public void updateProduct(Products product) throws SQLException {
        String query = "UPDATE Products SET model = ?, description = ?, image = ?, price = ?, update_at = ?, isActive = ? WHERE product_id = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, product.getModel());
            statement.setString(2, product.getDescription());
            statement.setString(3, product.getImage());
            statement.setFloat(4, product.getPrice());
            statement.setTimestamp(5, new Timestamp(product.getUpdateAt().getTime()));
            statement.setBoolean(6, product.isActive());
            statement.setInt(7, product.getProductId());

            statement.executeUpdate();
        }
    }

    @Override
    public void deleteProduct(Products product) throws SQLException {
        String query = "DELETE FROM Products WHERE product_id = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, product.getProductId());

            statement.executeUpdate();
        }
    }

    @Override
    public List<Products> getAllProduct() throws SQLException {
        List<Products> productList = new ArrayList<>();
        String query = "SELECT * FROM Products";

        try (Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            while (resultSet.next()) {
                int id = resultSet.getInt("product_id");
                String model = resultSet.getString("model");
                String description = resultSet.getString("description");
                String image = resultSet.getString("image");
                float price = resultSet.getFloat("price");
                Date createAt = resultSet.getDate("create_at");
                Date updateAt = resultSet.getDate("update_at");
                boolean isActive = resultSet.getBoolean("isActive");

                Products product = new Products(id, model, description, image, price, createAt, updateAt, isActive);
                productList.add(product);
            }
        }

        return productList;
    }
}

