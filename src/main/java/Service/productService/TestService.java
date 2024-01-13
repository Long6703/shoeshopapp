package Service.productService;

import Repository.productRepo.IproductRepo;

public class TestService {
    private IproductRepo iproductRepo;

    public TestService(IproductRepo iproductRepo) {
        this.iproductRepo = iproductRepo;
    }

    public String test(){
        return iproductRepo.hello();
    }
}
