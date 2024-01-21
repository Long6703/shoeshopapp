package Service.userService;

import Model.Users;
import Repository.userRepo.IAdminRepo;

import java.sql.SQLException;
import java.util.List;
public class AdminService {
    private IAdminRepo iAdminRepo;

    public AdminService(IAdminRepo iList) {
        this.iAdminRepo = iList;
    }

    public List<Users> ListUsers() throws SQLException {
        return iAdminRepo.ListUsers();
    }

    public Users FindUserByUsername(String username) throws SQLException {
        return iAdminRepo.FindUserByUsername(username);
    }

    public void UpdateUser(Users user) throws SQLException{
        iAdminRepo.UpdateUser(user);
    }

    public List<Users> FindUsers(String username) throws SQLException {
        return iAdminRepo.FindUsers(username);
    }
}
