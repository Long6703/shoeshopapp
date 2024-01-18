package Repository.productRepo;

import Model.Products;
import Model.Users;

import java.util.List;

public interface IproductRepo {
    public List<Products> getAllProducts();

    public boolean deleteProById(int id);

    public boolean deleteProByName(String name);

    public List<Products> getProIdByCateId(int cateId);
}
