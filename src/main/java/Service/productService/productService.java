package Service.productService;

import Repository.productRepo.IhomeproductRepo;
import Model.Products;

import java.sql.SQLException;
import java.util.List;

public class productService {
    private IhomeproductRepo ihomeproductRepo;

    public productService(IhomeproductRepo ihomeproductRepo) {
        this.ihomeproductRepo = ihomeproductRepo;
    }

    public List<Products> getLatestProducts() {
        try {
            List<Products> productList = ihomeproductRepo.getLatestProduct();
            return productList;
        } catch (SQLException e) {
            System.out.println("Lỗi khi lấy danh sách sản phẩm: " + e.getMessage());
            return null;
        }
    }
}
