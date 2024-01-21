package Controller.authen;

import Model.Accounts;
import Service.authenService.AccountService;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "RegisterController", urlPatterns = "/register")
public class RegisterController extends HttpServlet {
    private AccountService accountService;
    @Override
    public void init() throws ServletException {
        ServletContext servletContext = getServletContext();
        accountService = (AccountService) servletContext.getAttribute("accountService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect(req.getContextPath() + "/view/Register.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        String repassword = req.getParameter("repassword");
        String errors = "";
        // Validate user inputs
        if (userName.isEmpty() || password.isEmpty() || repassword.isEmpty()) {
            errors = "Please fill in all required fields";
            req.getRequestDispatcher("view/Register.jsp").forward(req, resp);
            return;
        }
        // Check if the account already exists
        if (accountService.getAccountByUsername(userName) != null) {
            errors = "Account already exists. Please choose a different account";
            req.getRequestDispatcher("view/Register.jsp").forward(req, resp);
            return;
        }

        if (!password.equals(repassword)) {
            errors="Re-password must match the password";
        }
        else {
            // Create a new user object
            Accounts account = new Accounts(userName, password);
            accountService.createAccount(account);
            resp.sendRedirect("login");
        }
    }
}
