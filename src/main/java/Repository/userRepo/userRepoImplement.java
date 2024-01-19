package Repository.userRepo;

import Repository.DBConnect;
import Repository.authenRepo.IAuthenRepo;

import java.sql.SQLException;

public class userRepoImplement extends DBConnect implements IuserRepo{
    @Override
    public void test(){
        System.out.println("test");
    }
}
