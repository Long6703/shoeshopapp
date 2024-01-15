package AppConfig;

import Repository.productRepo.IproductRepo;
import Repository.productRepo.productRepoImplement;
import Service.productService.TestService;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;


@WebListener
public class AppConfigListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext servletContext = sce.getServletContext();

        IproductRepo iproductRepo = new TestRepoImplement();
        IproductRepo iproductRepo1 = new productRepoImplement();
        servletContext.setAttribute("iproductRepo", iproductRepo);

        TestService testService = new TestService(iproductRepo);
        servletContext.setAttribute("testservice", testService);




    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // có thể xóa khi cần thiết
    }
}
