package Repository.productRepo;
import Model.*;
import java.util.List;

public interface IproductRepoForAdmin {
    public List<Products> getAllProducts();

    public boolean deleteProById(int id);

    public boolean deleteProByName(String name);

    public boolean updateProduct(Products products, int id);

    public boolean createProduct(Products products);

    public boolean checkModel(String name);

    public Products findProByName(String name);

    public Products findProById(int id);
}
