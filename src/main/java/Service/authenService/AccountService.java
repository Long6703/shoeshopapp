package Service.authenService;

import Repository.authenRepo.AccountRepo;

public class AccountService {
    // tương tự như controller thì mĩnh cũng đối tượng repo
    private AccountRepo accountRepo;

    public AccountService(AccountRepo accountRepo) {
        this.accountRepo = accountRepo;
    }
}
