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

@WebServlet(name = "ListProductController", urlPatterns = "/productlist")
public class ListProductController extends HttpServlet {
    private ProductService productService;
    @Override
    public void init() {
        ServletContext servletContext = getServletContext();
        productService = (ProductService) servletContext.getAttribute("productService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Products> list = productService.getAllProducts();
        if (list != null && !list.isEmpty()) {
            req.setAttribute("listProduct", list);
        }else {
            req.setAttribute("error", "List product is empty");
        }
        req.getRequestDispatcher("view/ListProduct.jsp").forward(req, resp);
    }
}
