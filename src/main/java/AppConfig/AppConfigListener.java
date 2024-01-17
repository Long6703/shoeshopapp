package AppConfig;

import Repository.ITest;
import Repository.TestRepoImplement;
import Service.TestService;
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
        servletContext.setAttribute("testservice", testService);git
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // có thể xóa khi cần thiết
    }
}
