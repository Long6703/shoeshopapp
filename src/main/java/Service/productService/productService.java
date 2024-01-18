package Service.productService;

import Model.Products;
import Repository.productRepo.IproductRepo;

import java.util.List;

public class productService {
    private IproductRepo iproductRepo;

    public productService(IproductRepo iproductRepo) {
        this.iproductRepo = iproductRepo;
    }
    public boolean deleteProById(int id){
        return iproductRepo.deleteProById(id);
    }
    public List<Products> getProIdByCateId(int cateId){
        return iproductRepo.getProIdByCateId(cateId);
    }
}
