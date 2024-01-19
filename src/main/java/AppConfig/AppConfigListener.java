package AppConfig;

import Repository.authenRepo.AuthenRepoImplement;
import Repository.authenRepo.IAuthenRepo;
import Repository.productRepo.IProductRepo;
import Repository.productRepo.ProductRepoImplement;
import Service.authenService.AccountService;
import Service.productService.ProductService;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;


@WebListener
public class AppConfigListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext servletContext = sce.getServletContext();

        IProductRepo iProductRepo = new ProductRepoImplement();
        servletContext.setAttribute("iProductRepo", iProductRepo);
        ProductService productService = new ProductService(iProductRepo);
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
