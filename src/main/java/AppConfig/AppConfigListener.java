package AppConfig;

import Repository.productRepo.IhomeproductRepo;
import Repository.productRepo.HomeProductRepoImplement;
import Service.productService.productService;
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

        IhomeproductRepo iProductRepo = new HomeProductRepoImplement();
        servletContext.setAttribute("iProductRepo", iProductRepo);

        productService productService = new productService(iProductRepo);
        servletContext.setAttribute("productService", productService);

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // có thể xóa khi cần thiết
    }
}