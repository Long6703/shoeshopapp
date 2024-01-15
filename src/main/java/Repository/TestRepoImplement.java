package Repository;

public class TestRepoImplement extends DBConnect implements ITest{
    @Override
    public String test(){
        return "hello";
    }
}
