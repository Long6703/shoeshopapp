package Controller.productController;

import Model.*;
import Service.productService.ProductService1;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailController", urlPatterns = "/productdetail")
public class DetailController extends HttpServlet {
    private ProductService1 productService;
    @Override
    public void init() throws ServletException {
        ServletContext servletContext = getServletContext();
        productService = (ProductService1) servletContext.getAttribute("productService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        Products product = productService.getProducById(Integer.parseInt(id));
        ProductDetails productDetails = productService.getProductDetailById(Integer.parseInt(id));
        List<Sizes> sizes = productService.getSizeByProductId(Integer.parseInt(id));
        List<Colors> colors = productService.getColorByProductId(Integer.parseInt(id));
        List<Images> images = productService.getImageByProductId(Integer.parseInt(id));
        req.setAttribute("product",product);
        req.setAttribute("productDetails",productDetails);
        req.setAttribute("sizes",sizes);
        req.setAttribute("colors",colors);
        req.setAttribute("images", images);
        req.getRequestDispatcher("view/ProductDetail.jsp").forward(req,resp);
    }
}
