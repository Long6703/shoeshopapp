package Service;

public class TestService {
    private ITest iTest;

    public TestService(ITest iTest) {
        this.iTest = iTest;
    }

    public String test(){
        return iTest.test();
    }


}
