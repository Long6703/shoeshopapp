package Controller.authen;

import Model.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public abstract class BaseAuthentication extends HttpServlet {

    private boolean isAuthenticated(HttpServletRequest request){
        Users users = (Users) request.getSession().getAttribute("user");
        return users!=null;
    }

    protected abstract void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;


    protected abstract void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(isAuthenticated(request)){
            processGet(request, response);
        }else {
            //request.getRequestDispatcher().forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(isAuthenticated(request)){
            processPost(request, response);
        }else {
            //request.getRequestDispatcher().forward(request, response);
        }
    }
}
