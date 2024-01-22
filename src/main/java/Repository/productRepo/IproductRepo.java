package Repository.productRepo;

import Model.Products;
import Model.Users;

import java.util.List;

public interface IproductRepo {
    public List<Products> getAllProducts();

    public boolean deleteProById(int id);

    public boolean deleteProByName(String name);

    public boolean updateProduct(Products products, int id);

    public boolean createProduct(Products products);

    public boolean checkModel(String name);

    public Products findProByName(String name);

    public Products findProById(int id);
}