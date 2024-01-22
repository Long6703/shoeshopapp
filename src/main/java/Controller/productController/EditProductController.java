package Controller.productController;

import Model.Products;
import Service.proCateService.proCateService;
import Service.productService.productService;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/EditProForAdmin")
public class EditProductController extends HttpServlet {
    private productService productService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = getServletContext();
        productService = (productService) servletContext.getAttribute("productService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("productId");
        int proID = Integer.parseInt(id);
        Products p = productService.getById(proID);
        req.setAttribute("product", p);
        req.getRequestDispatcher("view/EditProduct.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productId = req.getParameter("proId");
        String model = req.getParameter("model");
        String price = req.getParameter("price");
        String description = req.getParameter("des");
        String createAt = req.getParameter("create");
        String updateAt = req.getParameter("update");
        String isActive = req.getParameter("active");
        boolean check;
        if (isActive == null) {
            check = false;
        } else {
            check = true;
        }

        Products p = new Products(Integer.parseInt(productId),
                model,
                description,
                Float.parseFloat(price),
                createAt,
                updateAt,
                check
        );

        if (productService.updatePro(p, p.getProductId())) {
            resp.sendRedirect("/shoeshopapp/listProForAdmin");
        }


    }
}
