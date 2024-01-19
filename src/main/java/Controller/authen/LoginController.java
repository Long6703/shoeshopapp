package Controller.authen;

import Service.authenService.AccountService;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
@WebServlet(name = "LoginController", urlPatterns = "/login")
public class LoginController extends HttpServlet {
    private AccountService accountService;
    @Override
    public void init() throws ServletException {
        ServletContext servletContext = getServletContext();
        accountService = (AccountService) servletContext.getAttribute("accountService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect(req.getContextPath()+ "/view/Login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("account");
        String password = req.getParameter("password");
        String loginError = "";

        if (userName == null || userName.isEmpty() || password == null || password.isEmpty()) {
            loginError = "Please enter account and password";
            req.setAttribute("loginError", loginError);
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
            return;
        }
        if (accountService.checkLogin(userName,password)) {
            HttpSession session = req.getSession();
            session.setAttribute("userName",userName);
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } else {
            // Invalid credentials, display error message
            loginError = "Invalid account or password";
            req.setAttribute("loginError", loginError);
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }
    }
}
