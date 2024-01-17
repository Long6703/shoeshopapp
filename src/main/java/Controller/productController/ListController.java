package Controller.productController;

import Model.Products;
import Service.productService.ProductService;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListController", urlPatterns = "/productlist")
public class ListController extends HttpServlet {
    private ProductService productService;
    @Override
    public void init() {
        ServletContext servletContext = getServletContext();
        productService = (ProductService) servletContext.getAttribute("productService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Products> list = productService.getAllProducts();
        req.setAttribute("listProduct", list);
        req.getRequestDispatcher("view/ListProduct.jsp").forward(req,resp);
    }
}
