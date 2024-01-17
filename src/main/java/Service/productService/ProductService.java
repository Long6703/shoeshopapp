package Service.productService;

import Repository.productRepo.IproductRepo;
import Model.Products;

import java.sql.SQLException;
import java.util.List;

public class ProductService {
    private IproductRepo iproductRepo;

    public ProductService(IproductRepo iproductRepo) {
        this.iproductRepo = iproductRepo;
    }
    public void addProduct(Products product) {
        try {
            iproductRepo.addProduct(product);
            System.out.println("Thêm sản phẩm thành công");
        } catch (SQLException e) {
            System.out.println("Lỗi khi thêm sản phẩm: " + e.getMessage());
        }
    }

    public void updateProduct(Products product) {
        try {
            iproductRepo.updateProduct(product);
            System.out.println("Cập nhật sản phẩm thành công");
        } catch (SQLException e) {
            System.out.println("Lỗi khi cập nhật sản phẩm: " + e.getMessage());
        }
    }

    public void deleteProduct(Products product) {
        try {
            iproductRepo.deleteProduct(product);
            System.out.println("Xóa sản phẩm thành công");
        } catch (SQLException e) {
            System.out.println("Lỗi khi xóa sản phẩm: " + e.getMessage());
        }
    }

    public List<Products> getAllProducts() {
        try {
            List<Products> productList = iproductRepo.getAllProduct();
            return productList;
        } catch (SQLException e) {
            System.out.println("Lỗi khi lấy danh sách sản phẩm: " + e.getMessage());
            return null;
        }
    }
}
