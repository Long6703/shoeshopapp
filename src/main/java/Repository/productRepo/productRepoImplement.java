package Repository.productRepo;

import Model.Users;
import Repository.DBConnect;
import Repository.authenRepo.IauthenRepo;

import java.sql.SQLException;
import java.util.List;

public class productRepoImplement extends DBConnect implements IproductRepo {
    @Override
    public List<Users> getallUser() {
        return null;
    }

    @Override
    public String hello() {
        return "hello";
    }

    @Override
    public String getAllUsers() {
        return null;

    }

}

