package Repository.userRepo;

import Model.Users;

import java.sql.SQLException;
import java.util.List;

public interface IuserListRepo {
    public List<Users> ListUsers() throws SQLException;
}
