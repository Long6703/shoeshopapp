package Service.productService;

import Repository.productRepo.IproductRepo;

public class productService {
    private IproductRepo iproductRepo;

    public productService(IproductRepo iproductRepo) {
        this.iproductRepo = iproductRepo;
    }
}
