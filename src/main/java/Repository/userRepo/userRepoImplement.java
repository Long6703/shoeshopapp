package Repository.userRepo;

import Repository.DBConnect;

public class userRepoImplement extends DBConnect implements IuserRepo{
    @Override
    public void test(){
        System.out.println("test");
    }
}
