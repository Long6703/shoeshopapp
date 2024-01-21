package Controller.userController;

import Model.Users;
import Service.userService.AdminService;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class UserUpdateController extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = getServletContext();
        adminService = (AdminService) servletContext.getAttribute("adminService");
    }

    private AdminService adminService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        try {
            Users user = adminService.FindUserByUsername(username);
            request.setAttribute("userupdate", user);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        request.getRequestDispatcher("view/userUpdate.jsp").forward(request,response);
    }

    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users users = new Users();
        users.setUsername(request.getParameter("username"));
        users.setFullName(request.getParameter("fullname"));
        users.setPhone_number(request.getParameter("phone_number"));
        users.setGoogle_account_id(request.getParameter("google_account_id"));
        users.setEmail(request.getParameter("email"));
        users.setAvatar(request.getParameter("avatar"));
        users.setCreate_at(request.getParameter("create_at"));
        users.setUpdate_at(request.getParameter("update_at"));
        users.setActive(Boolean.parseBoolean(request.getParameter("isactive")));
        System.out.println(users.getFullName());
        try {
            adminService.UpdateUser(users);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try {
            List<Users> usersList = adminService.ListUsers();
            request.setAttribute("userlist", usersList);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        request.getRequestDispatcher("view/userList.jsp").forward(request,response);
    }
}
