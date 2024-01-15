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

import static jdk.jpackage.internal.IOUtils.getFileName;

@MultipartConfig
public class TestController extends HttpServlet {

    private TestService testService;
    private final static Logger LOGGER = Logger.getLogger(TestController.class.getCanonicalName());

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = getServletContext();
        testService = (TestService) servletContext.getAttribute("testservice");
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("view/choosefile.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String path = req.getParameter("destination");
        final Part filePart = req.getPart("file");

    }

    private String getFileName(final Part part){

    }

}
