package AppConfig;

import Repository.ITest;
import Repository.ProCateRepo.IProCateRepo;
import Repository.ProCateRepo.proCateRepoImplement;
import Repository.TestRepoImplement;
import Repository.categoryRepo.IcategoryRepo;
import Repository.categoryRepo.categoryRepoImplement;
import Repository.productRepo.IproductRepo;
import Repository.productRepo.productRepoImplement;
import Service.TestService;
import Service.categoryService.categoryService;
import Service.productService.productService;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import Service.proCateService.proCateService;


@WebListener
public class AppConfigListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext servletContext = sce.getServletContext();

        ITest iTest = new TestRepoImplement();
        servletContext.setAttribute("iTest", iTest);

        TestService testService = new TestService(iTest);
        servletContext.setAttribute("testservice", testService);

//        IcategoryRepo icategoryRepo = new categoryRepoImplement();
//        servletContext.setAttribute("icategoryRepo", icategoryRepo);

//        categoryService categoryService = new categoryService(icategoryRepo);
//        servletContext.setAttribute("categoryService", categoryService);
//
//        IProCateRepo iProCateRepo = new proCateRepoImplement();
//        servletContext.setAttribute("iProCateRepo", iProCateRepo);
//
//        proCateService proCateService = new proCateService(iProCateRepo);
//        servletContext.setAttribute("proCateService", proCateService);

        IproductRepo iproductRepo = new productRepoImplement();
        servletContext.setAttribute("iproductRepo", iproductRepo);

        productService productService = new productService(iproductRepo);
        servletContext.setAttribute("productService", productService);




    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // có thể xóa khi cần thiết
    }
}
