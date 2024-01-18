package Controller.categoryController;

import Service.categoryService.categoryService;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet("/nah")
public class CreateCateController extends HttpServlet {
    private categoryService categoryService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = getServletContext();
        categoryService = (categoryService) servletContext.getAttribute("categoryService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("view/CreateCategory.jsp").forward(req, resp);
//chạy vào đây
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("cateName");
        String createAtString = req.getParameter("createAt");
        System.out.println(createAtString);
        String updateAtString = req.getParameter("updateAt"); // Assuming you have a parameter named "updateAt"
        Boolean active = Boolean.parseBoolean(req.getParameter("isActive"));

        Date createAt = null;
        Date updateAt = null;

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try {
            createAt = (Date) dateFormat.parse(createAtString);
            updateAt = (Date) dateFormat.parse(updateAtString);
        } catch (ParseException e) {
            e.printStackTrace(); // Handle the exception based on your needs
        }

        boolean check = categoryService.checkExistedCate(name);
        String message = check ? "Name exists" : "Create successfully";

        if (!check) {
            check = categoryService.insertCategory(name, createAt, updateAt, active);
        }

        req.setAttribute("mess", message);
        req.getRequestDispatcher("view/CreateCategory.jsp").forward(req, resp);
    }
}
