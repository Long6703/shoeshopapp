package Service.productService;

import Repository.productRepo.IproductRepo;

public class productService1 {
    private IproductRepo iproductRepo;

    public productService1(IproductRepo iproductRepo) {
        this.iproductRepo = iproductRepo;
    }
}
