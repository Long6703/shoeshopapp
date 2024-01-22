package Controller.categoryController;

import Model.Categories;
import Model.Products;
import Service.categoryService.categoryService;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/listCategory")
public class CategoryController extends HttpServlet {
    private categoryService categoryService;

    List<Categories> list;
    private proCateService proCateService;

    private productService productService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = getServletContext();
        categoryService = (categoryService) servletContext.getAttribute("categoryService");
        proCateService = (proCateService) servletContext.getAttribute("proCateService");
        productService = (productService) servletContext.getAttribute("productService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        list = categoryService.getAllCategories();
//        req.setAttribute("listCate", list);
//        req.getRequestDispatcher("view/ListCategory.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//        String[] arr_id = req.getParameterValues("checkDel");
//        for (String a : arr_id) {
//            List<Products> l = new ArrayList<>();
//            int id = Integer.parseInt(a);
//            //l = productService.getProIdByCateId(id);
//            if (proCateService.deleteProCateByCateId(id)) {
//                categoryService.deleById(id);
//            }
//        }
//        list = categoryService.getAllCategories();
//        req.setAttribute("listCate", list);
//        req.getRequestDispatcher("view/ListCategory.jsp").forward(req, resp);
//    }
    }
}

//chạy từ đây