package AppConfig;

import Repository.productRepo.IproductRepo;
import Repository.productRepo.TestRepoImplement;
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
        servletContext.setAttribute("iproductRepo", iproductRepo);

        TestService testService = new TestService(iproductRepo);
        servletContext.setAttribute("testservice", testService);

        //Tạo các đối tượng để lưu trữ trong servlet context
        // Tạo và lưu trữ đối tượng GroupRepository
//        GroupRepository groupRepository = new GroupRepositoryImpl();
//        servletContext.setAttribute("groupRepository", groupRepository);

        // Các bước tương tự cho các đối tượng khác...
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // có thể xóa khi cần thiết
    }

//    public class GroupServlet extends HttpServlet {
//        protected void doGet(HttpServletRequest request, HttpServletResponse response)
//                throws ServletException, IOException {
//            ServletContext servletContext = getServletContext();
//
//            // Lấy đối tượng GroupRepository từ ServletContext
//            GroupRepository groupRepository = (GroupRepository) servletContext.getAttribute("groupRepository");
//
//            // Sử dụng đối tượng GroupRepository...
//        }
//    }
}
