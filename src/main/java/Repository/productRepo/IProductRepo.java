package Repository.productRepo;

import Model.*;

import java.sql.SQLException;
import java.util.List;

public interface IProductRepo {
    ProductDetails getProductDetailById(int productId);
    Products getProducById(int productId);
    List<Categories> getActiveCategories();
    List<Products> getAllProducts();
    List<Products> getProductsByCategory(int categoryId);
    List<Colors> getColorByProductID(int productId);
    List<Sizes> getSizeByProductID(int productId);

    List<Images> getImageByProductID(int productId);

    List<Products> searchProduct(String pattern);

    List<Products> getLastestProduct();
}