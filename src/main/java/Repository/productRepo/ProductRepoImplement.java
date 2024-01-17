package Repository.productRepo;

import Model.Products;
import Repository.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductRepoImplement extends DBConnect implements IproductRepo {

    @Override
    public List<Products> getLatestProduct() throws SQLException {
        List<Products> productList = new ArrayList<>();
        String query = "SELECT * FROM product\n" +
                "ORDER BY created_at DESC\n" +
                "LIMIT 5;";

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