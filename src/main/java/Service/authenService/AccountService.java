package Service.authenService;

import Model.Categories;
import Repository.authenRepo.AccountRepo;

import java.util.List;

public class AccountService {
    private AccountRepo accountRepo;

    public AccountService(AccountRepo accountRepo) {
        this.accountRepo = accountRepo;
    }


}
