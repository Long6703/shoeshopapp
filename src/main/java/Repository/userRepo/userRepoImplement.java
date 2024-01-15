package Repository.userRepo;

import Repository.DBConnect;
import Repository.authenRepo.IauthenRepo;

import java.sql.SQLException;

public class userRepoImplement extends DBConnect implements IuserRepo{
    @Override
    public void test(){
        System.out.println("test");
    }
}
