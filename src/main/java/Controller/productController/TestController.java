package Controller.productController;

import Service.productService.TestService;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.util.UUID;
import java.util.logging.Logger;


@MultipartConfig
public class TestController extends HttpServlet {

    private TestService testService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = getServletContext();
        testService = (TestService) servletContext.getAttribute("testservice");
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        testService.getallUser();

    }



}
