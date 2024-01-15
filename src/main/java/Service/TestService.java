package Service;

import Model.Users;
import Repository.ITest;
import Repository.productRepo.IproductRepo;

import java.util.List;
import java.util.logging.Logger;

public class TestService {
    private ITest iTest;

    public TestService(ITest iTest) {
        this.iTest = iTest;
    }

    public String test(){
        return iTest.test();
    }


}
