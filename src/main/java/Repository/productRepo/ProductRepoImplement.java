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
        String query = "SELECT \n" +
                "    P.product_id,\n" +
                "    P.model,\n" +
                "    I.image_url,\n" +
                "    P.price,\n" +
                "    PD.description,\n" +
                "    P.create_at,\n" +
                "    P.update_at,\n" +
                "    P.isActive \n" +
                "FROM\n" +
                "    Products P\n" +
                "JOIN\n" +
                "    Images I ON P.product_id = I.product_id\n" +
                "JOIN\n" +
                "    Product_Details PD ON PD.product_id = P.product_id \n" +
                "ORDER BY\n" +
                "    P.create_at DESC;";

        try (Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String model = resultSet.getString(2);
                String description = resultSet.getString(5);
                String image = resultSet.getString(3);
                float price = resultSet.getFloat(4);
                Date createAt = resultSet.getDate(6);
                Date updateAt = resultSet.getDate(7);
                boolean isActive = resultSet.getBoolean(8);

                Products product = new Products(id, model, description, image, price, createAt, updateAt, isActive);
                productList.add(product);
            }
        }

        return productList;
    }
}