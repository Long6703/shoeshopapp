package Repository.productRepo;

import Repository.DBConnect;
import Repository.authenRepo.IauthenRepo;

import java.sql.SQLException;

public class productRepoImplement extends DBConnect implements IproductRepo {
    @Override
    public String hello() {
        return "Nah";
    }
}
