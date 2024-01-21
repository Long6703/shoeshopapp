package AppConfig;

import Repository.userRepo.IAdminRepo;
import Repository.userRepo.AdminRepo;
import Repository.authenRepo.AuthenRepoImplement;
import Repository.authenRepo.IAuthenRepo;
import Service.authenService.AccountService;
import Service.productService.productService;
import Repository.productRepo.ProductRepoImplement;
import Repository.productRepo.IProductRepo;
import Service.userService.AdminService;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;


@WebListener
public class AppConfigListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext servletContext = sce.getServletContext();

        IAdminRepo iAdmin = new AdminRepo();
        servletContext.setAttribute("iUser", iAdmin);
        AdminService adminService = new AdminService(iAdmin);
        servletContext.setAttribute("adminService", adminService);
        IProductRepo iProductRepo = new ProductRepoImplement();
        servletContext.setAttribute("iProductRepo", iProductRepo);
        productService productService = new productService(iProductRepo);
        servletContext.setAttribute("productService", productService);


        IAuthenRepo iAuthenRepo = new AuthenRepoImplement();
        servletContext.setAttribute("iAuthenRepo",iAuthenRepo);
        AccountService accountService = new AccountService(iAuthenRepo);
        servletContext.setAttribute("accountService", accountService);




    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // có thể xóa khi cần thiết
    }
}