package Repository.authenRepo;

import Model.Accounts;

import java.sql.SQLException;

public interface IAuthenRepo {
    boolean authenticUser(String userName, String password);
    Accounts getAccountByUserName(String userName);

    void createAccount(Accounts accounts);
}
