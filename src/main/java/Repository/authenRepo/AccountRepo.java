package Repository.authenRepo;

import Repository.DBConnect;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Logger;

public class AccountRepo extends DBConnect implements IauthenRepo {
    @Override
    public void test() throws SQLException {
        //Viet code vao day de lay data tu database
        String sql = "select * from ........";
    }
}
