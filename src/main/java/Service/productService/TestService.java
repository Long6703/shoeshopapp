package Service.productService;

import Repository.productRepo.IproductRepo;

import java.util.logging.Logger;

public class TestService {
    private IproductRepo iproductRepo;

    public TestService(IproductRepo iproductRepo) {
        this.iproductRepo = iproductRepo;
    }

    public String test(){
        return iproductRepo.hello();
    }

    public String testuploadfiletosavefolder(){
        return null;
    }
}
