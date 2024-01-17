package Service.userService;

import Model.Users;
import Repository.ITest;
import Repository.userRepo.IuserListRepo;
import Repository.userRepo.userRepoImplement;

import java.sql.SQLException;
import java.util.List;
public class AdminService {
    private IuserListRepo iList;

    public AdminService(IuserListRepo iList) {
        this.iList = iList;
    }

    public List<Users> ListUsers() throws SQLException {
        return iList.ListUsers();
    }
}
