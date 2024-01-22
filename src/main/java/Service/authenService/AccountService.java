package Service.authenService;


import Model.Accounts;
import Repository.authenRepo.IAuthenRepo;

public class AccountService {
    private IAuthenRepo iAuthenRepo;

    public AccountService(IAuthenRepo iAuthenRepo) {
        this.iAuthenRepo = iAuthenRepo;
    }
    public boolean checkLogin(String userName, String password) {
        return iAuthenRepo.authenticUser(userName,password) ? true : false;
    }
    public Accounts getAccountByUsername(String userName) {
        return iAuthenRepo.getAccountByUserName(userName);
    }

    public void createAccount(Accounts accounts) {
        iAuthenRepo.createAccount(accounts);
    }
}