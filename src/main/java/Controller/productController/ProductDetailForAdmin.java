package Controller.productController;

import Service.productService.productService;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/ProductDetailForAdmin")
public class ProductDetailForAdmin extends HttpServlet {
    private productService productService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = getServletContext();
        productService = (productService) servletContext.getAttribute("productService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String proId = req.getParameter("productId");
        req.setAttribute("ID", proId);
        req.getRequestDispatcher("view/detail.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String proId = req.getParameter("productId");
        String color = req.getParameter("colorId");
        String size = req.getParameter("sizeId");
        ProductDetails productDetailsList = productService.getAProDetail(Integer.parseInt(proId), Integer.parseInt(color), Integer.parseInt(size));
        String color_R = productService.getColor(Integer.parseInt(color));
        String size_R = productService.getSize(Integer.parseInt(size));
        req.setAttribute("proDetail", productDetailsList);
        req.setAttribute("color", color_R);
        req.setAttribute("size", size_R);
        req.getRequestDispatcher("view/detail.jsp").forward(req, resp);
    }
}
