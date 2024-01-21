package Controller.productController;

import Model.Categories;
import Model.Products;
import Service.productService.productService;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ListProductController", urlPatterns = "/productlist")
public class ListProductController extends HttpServlet {
    private productService productService;

    @Override
    public void init() {
        ServletContext servletContext = getServletContext();
        productService = (productService) servletContext.getAttribute("productService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        List<Products> productsList = new ArrayList<>();
        if (action != null && action.equals("1")) {
            String id = req.getParameter("id");
            productsList = productService.getProductsByCategory(Integer.parseInt(id));
        } else {
            productsList = productService.getAllProducts();
        }
        List<Categories> categoriesList = productService.getActiveCategories();
        req.setAttribute("categoriesList", categoriesList);
        if (productsList != null && !productsList.isEmpty()) {
            req.setAttribute("productsList", productsList);
        } else {
            req.setAttribute("error", "List product is empty");
        }
        req.getRequestDispatcher("view/ListProduct.jsp").forward(req, resp);
    }
}