package Service.productService;

import Model.Products;
import Repository.productRepo.IproductRepo;

import java.util.List;

public class productService {
    private IproductRepo iproductRepo;

    public productService(IproductRepo iproductRepo) {
        this.iproductRepo = iproductRepo;
    }
    public List<Products> getAllProducts(){
        return iproductRepo.getAllProducts();
    }

    public boolean deleteProById(int id){
        return iproductRepo.deleteProById(id);
    }
    public boolean checkModel(String name){
        return iproductRepo.checkModel(name);
    }

    public boolean createProduct(Products products){
        boolean b = !iproductRepo.createProduct(products);
        return b;
    }
}
