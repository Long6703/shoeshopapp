package AppConfig;

import Repository.productRepo.IproductRepo;
import Repository.productRepo.ProductRepoImplement;
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

        IproductRepo iProductRepo = new ProductRepoImplement();
        servletContext.setAttribute("iProductRepo", iProductRepo);

        productService productService = new productService(iProductRepo);
        servletContext.setAttribute("productService", productService);

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // có thể xóa khi cần thiết
    }
}