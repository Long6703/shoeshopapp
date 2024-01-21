package Repository.userRepo;

import Model.Users;

import java.sql.SQLException;
import java.util.List;

public interface IAdminRepo {
    public List<Users> ListUsers() throws SQLException;

    public Users FindUserByUsername(String username) throws SQLException;

    public void UpdateUser(Users user) throws SQLException;

    public List<Users> FindUsers(String username) throws SQLException;
}
