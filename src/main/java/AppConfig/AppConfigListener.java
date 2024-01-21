package AppConfig;

import Repository.userRepo.IAdminRepo;
import Repository.userRepo.AdminRepo;
import Service.productService.productService;
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




    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // có thể xóa khi cần thiết
    }
}