package Service.productService;

import Repository.productRepo.IproductRepo;
import Model.Products;

import java.sql.SQLException;
import java.util.List;

public class productService {
    private IproductRepo iproductRepo;

    public productService(IproductRepo iproductRepo) {
        this.iproductRepo = iproductRepo;
    }

    public List<Products> getLatestProducts() {
        try {
            List<Products> productList = iproductRepo.getLatestProduct();
            return productList;
        } catch (SQLException e) {
            System.out.println("Lỗi khi lấy danh sách sản phẩm: " + e.getMessage());
            return null;
        }
    }
}
