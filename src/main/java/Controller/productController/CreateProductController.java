package Controller.productController;

import Service.productService.productServiceForAdmin;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Date;

@WebServlet("/CreateProForAdmin")
public class CreateProductController extends HttpServlet {
    private productServiceForAdmin productServiceForAdmin;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = getServletContext();
        productServiceForAdmin = (productServiceForAdmin) servletContext.getAttribute("productServiceForAdmin");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("./view/CreateProduct.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Date date = new Date();
        String model = req.getParameter("Model").trim();
        System.out.println(model);
        String price = req.getParameter("price");
        String create = String.valueOf(date.getTime());
        String update = String.valueOf(date.getTime());
        String des = req.getParameter("description");
        String n = productService.checkModel(model);
        String mess = "";
        if(n != null){
            mess = "Your model is existed!";
        }else {

            if(productService.createProduct(new Products(model, des, Float.parseFloat(price), create, update,true))){
                mess = "Create Successfully!";
            }
        }
        req.setAttribute("mess", mess);
        req.getRequestDispatcher("view/CreateProduct.jsp").forward(req, resp);
    }

}
