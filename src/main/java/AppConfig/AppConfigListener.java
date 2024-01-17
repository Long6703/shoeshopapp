package AppConfig;

import Repository.*;
import Repository.userRepo.IuserListRepo;
import Repository.userRepo.UserListRepoImplement;
import Repository.userRepo.userRepoImplement;
import Service.*;
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

        ITest iTest = new TestRepoImplement();
        servletContext.setAttribute("iTest", iTest);
        TestService testService = new TestService(iTest);
        servletContext.setAttribute("testservice", testService);

        IuserListRepo iUser = new UserListRepoImplement();
        servletContext.setAttribute("iUser", iUser);
        AdminService adminService = new AdminService(iUser);
        servletContext.setAttribute("adminService", adminService);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // có thể xóa khi cần thiết
    }
}
