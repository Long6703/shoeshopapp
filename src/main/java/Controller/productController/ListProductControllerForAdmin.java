package Controller.productController;

import Model.Products;
import Service.productService.productServiceForAdmin;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
@WebServlet("/listProForAdmin")

public class ListProductControllerForAdmin extends HttpServlet {
    private productServiceForAdmin productServiceForAdmin;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = getServletContext();
        productServiceForAdmin = (productServiceForAdmin) servletContext.getAttribute("productServiceForAdmin");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Products> list = productServiceForAdmin.getAllProducts();
        req.setAttribute("listProduct", list);
        req.getRequestDispatcher("/view/ListProductForAdmin.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
