package Service.authenService;

import Repository.authenRepo.AccountRepo;

public class AccountService {
    private AccountRepo accountRepo;

    public AccountService(AccountRepo accountRepo) {
        this.accountRepo = accountRepo;
    }
}
