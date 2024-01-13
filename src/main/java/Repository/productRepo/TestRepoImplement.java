package Repository.productRepo;

import Repository.DBConnect;

public class TestRepoImplement implements IproductRepo {
    @Override
    public String hello() {
        return "hello";
    }
}
