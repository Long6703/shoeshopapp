package Repository.productRepo;

import Model.*;
import Repository.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductRepoImplement extends DBConnect implements IProductRepo {
    @Override
    public List<Categories> getActiveCategories() {
        List<Categories> categoriesByStatus = new ArrayList<>();
        String query = "SELECT * FROM Categories WHERE isActive = 1";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int categoryId = resultSet.getInt("category_id");
                String categoryName = resultSet.getString("category_name");
                String createdAt = resultSet.getString("create_at");
                String updatedAt = resultSet.getString("update_at");
                boolean categoryStatus = resultSet.getBoolean("isActive");

                Categories category = new Categories(categoryId, categoryName, createdAt, updatedAt, true);
                categoriesByStatus.add(category);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categoriesByStatus;
    }

    @Override
    public List<Products> getAllProducts() {
        List<Products> products = new ArrayList<>();
        String query = "SELECT product_id, model, price FROM Products";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int productId = resultSet.getInt("product_id");
                String productName = resultSet.getString("model");
                double price = resultSet.getDouble("price");
                Products product = new Products(productId, productName, price);
                products.add(product);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public List<Products> getProductsByCategory(int categoryId) {
        List<Products> products = new ArrayList<>();
        String query = "SELECT P.product_id, P.model, P.price " +
                "FROM Products P " +
                "INNER JOIN Product_Categories PC ON P.product_id = PC.product_id " +
                "WHERE PC.category_id = ? AND P.isActive = 1";

        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, categoryId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    int productId = rs.getInt("product_id");
                    String productName = rs.getString("model");
                    double price = rs.getDouble("price");
                    Products product = new Products(productId, productName, price);
                    products.add(product);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return products;
    }

    @Override
    public ProductDetails getProductDetailById(int productId) {
        String query = "SELECT * FROM [dbo].[Product_Details] WHERE [product_detail_id] = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, productId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    // Retrieve the data from the result set
                    int productDetailId = resultSet.getInt("product_id");
                    int sizeId = resultSet.getInt("size_id");
                    int colorId = resultSet.getInt("color_id");
                    String description = resultSet.getString("description");
                    int stock = resultSet.getInt("stock");
                    return new ProductDetails(productDetailId, productId, sizeId, colorId, description, stock);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Products getProducById(int productId) {
        String query = "SELECT * FROM [dbo].[Products] WHERE [product_id] = ? AND isActive = 1";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, productId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    // Retrieve the data from the result set
                    String model = resultSet.getString("model");
                    String description = resultSet.getString("description");
                    double price = resultSet.getDouble("price");
                    String createAt = resultSet.getString("create_at");
                    String updateAt = resultSet.getString("update_at");
                    return new Products(productId, model, description, price, createAt, updateAt, true);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Colors> getColorByProductID(int productId) {
        List<Colors> colors = new ArrayList<>();
        String query = "SELECT I.[color_id], I.[color_name] " +
                "FROM [dbo].[Product_Details] PD " +
                "INNER JOIN [dbo].[Colors] I ON I.[color_id] = PD.[color_id] " +
                "WHERE PD.[product_id] = ?";

        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, productId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    int colorId = rs.getInt("color_id");
                    String colorName = rs.getString("color_name");
                    Colors color = new Colors(colorId, colorName);
                    colors.add(color);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return colors;
    }

    public List<Sizes> getSizeByProductID(int productId) {
        List<Sizes> sizes = new ArrayList<>();
        String query = "SELECT S.[size_id], S.[size_name] " +
                "FROM [dbo].[Product_Details] PD " +
                "INNER JOIN [dbo].[Sizes] S ON S.[size_id] = PD.[size_id] " +
                "WHERE PD.[product_id] = ?";

        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, productId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    int sizeId = rs.getInt("size_id");
                    String sizeName = rs.getString("size_name");
                    Sizes size = new Sizes(sizeId, sizeName);
                    sizes.add(size);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return sizes;
    }

    public List<Images> getImageByProductID(int productId) {
        List<Images> images = new ArrayList<>();
        String query = "SELECT I.[image_id], I.[image_url] " +
                "FROM [dbo].[Product_Details] PD " +
                "INNER JOIN [dbo].[Images] I ON I.[product_detail_id] = PD.[product_detail_id] " +
                "WHERE PD.[product_id] = ?";

        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, productId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    int imageId = rs.getInt("image_id");
                    String imageName = rs.getString("image_url");
                    Images image = new Images(imageId, imageName);
                    images.add(image);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return images;
    }

    @Override
    public List<Products> searchProduct(String pattern) {
        List<Products> products = new ArrayList<>();
        String sql = "SELECT DISTINCT P.product_id, P.model, P.price " +
                "FROM Products P " +
                "INNER JOIN Product_Categories PC ON P.product_id = PC.product_id " +
                "INNER JOIN Categories C ON C.category_id = PC.category_id " +
                "WHERE P.model LIKE ? OR C.category_name LIKE ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, "%" + pattern + "%");
            stmt.setString(2, "%" + pattern + "%");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("product_id");
                String productName = rs.getString("model");
                double price = rs.getDouble("price");
                Products product = new Products(productId, productName, price);
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public List<Products> getLastestProduct() {
        List<Products> products = new ArrayList<>();
        String query = "SELECT TOP 5 product_id, model, price " +
                "FROM Products " +
                "ORDER BY [create_at] DESC";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int productId = resultSet.getInt("product_id");
                String productName = resultSet.getString("model");
                double price = resultSet.getDouble("price");
                Products product = new Products(productId, productName, price);
                products.add(product);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
}

