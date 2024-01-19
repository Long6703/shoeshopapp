package Service.productService;

import Model.*;
import Repository.productRepo.IProductRepo;

import java.sql.SQLException;
import java.util.List;

public class ProductService {
    private IProductRepo iProductRepo;

    public ProductService(IProductRepo iproductRepo) {
        this.iProductRepo = iproductRepo;
    }

    public List<Categories> getActiveCategories() {
        return iProductRepo.getActiveCategories();
    }

    public List<Products> getAllProducts() {
        return iProductRepo.getAllProducts();
    }

    public List<Products> getProductsByCategory(int categoryId) {
        return iProductRepo.getProductsByCategory(categoryId);
    }

    public int countProductOfCategories(int categoryId) {
        int count = 0;
        List<Products> products = iProductRepo.getProductsByCategory(categoryId);
        for(Products p : products) {
            count++;
        }
        return count;
    }
    public int countAllProduct() {
        int stock = 0;
        List<Categories> categories = iProductRepo.getActiveCategories();
        for(Categories c : categories) {
            stock += countProductOfCategories(c.getCategoryId());
        }
        return stock;
    }
    public Products getProducById(int productId) {
        return iProductRepo.getProducById(productId);
    }
    public List<Colors> getColorByProductId(int productId) {
        return iProductRepo.getColorByProductID(productId);
    }

    public List<Sizes> getSizeByProductId(int productId) {
        return iProductRepo.getSizeByProductID(productId);
    }
    public ProductDetails getProductDetailById(int productId) {
        return iProductRepo.getProductDetailById(productId);
    }
    public List<Images> getImageByProductId(int productId) {
        return iProductRepo.getImageByProductID(productId);
    }
    public List<Products> searchProduct(String pattern) {
        return iProductRepo.searchProduct(pattern.trim());
    }
}