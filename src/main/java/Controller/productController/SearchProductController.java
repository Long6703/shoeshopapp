package Controller.productController;

import Model.Categories;
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

@WebServlet(name = "SearchProductController", urlPatterns = "/search")
public class SearchProductController extends HttpServlet {
    private ProductService productService;
    @Override
    public void init() throws ServletException {
        ServletContext servletContext = getServletContext();
        productService = (ProductService) servletContext.getAttribute("productService");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pattern = req.getParameter("pattern");
        List<Products> productsList = productService.searchProduct(pattern);
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
