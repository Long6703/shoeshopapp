package Service.productService;

import Model.Users;
import Repository.productRepo.IproductRepo;

import java.util.List;
import java.util.logging.Logger;

public class TestService {
    private IproductRepo iproductRepo;

    public TestService(IproductRepo iproductRepo) {
        this.iproductRepo = iproductRepo;
    }

    public String test(){
        return iproductRepo.hello();
    }


}
