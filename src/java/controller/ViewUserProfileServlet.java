/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AdminDAO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author hophu
 */
public class ViewUserProfileServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String action = request.getParameter("action");
            AdminDAO d = new AdminDAO();
            String filename = null;
            int id;
            if (action == null || action.equals("")) {
                request.setAttribute("ProfileUser", d.getAllUser());
                request.setAttribute("UserTemp", d.getUserByID(1));
                request.getRequestDispatcher("user_profile_detail.jsp").forward(request, response);
                return;
            }
            switch (action) {
                case "AddOrEdit":
                    id = Integer.parseInt(request.getParameter("id"));
                    User u1 = d.getUserByID(1);
                    if (u1 == null) {
                        request.setAttribute("INFOR", new User());
                    }
                    request.setAttribute("INFOR", u1);
                    request.setAttribute("ACTION", "SaveOrUpdate");
                    request.getRequestDispatcher("infor.jsp").forward(request, response);
                    break;
                case "SaveOrUpdate":
                    try {
                        DiskFileItemFactory factory = new DiskFileItemFactory();
                        ServletContext servletContext = this.getServletConfig().getServletContext();
                        File repository = (File) servletContext.getAttribute("jakarta.servlet.context.tempdir");
                        factory.setRepository(repository);
                        ServletFileUpload upload = new ServletFileUpload(factory);
                        List<FileItem> items = null;
                        Iterator<FileItem> iter = items.iterator();
                        HashMap<String, String> fields = new HashMap<>();
                        while (iter.hasNext()) {
                            FileItem item = iter.next();
                            if (item.isFormField()) {
                                fields.put(item.getFieldName(), item.getString());
                                String name = item.getFieldName();
                                String value = item.getString();
                                System.out.println("name: " + name);
                                System.out.println("value: " + value);
                            } else {
                                filename = item.getName();
                                System.out.println("filename: " + filename);
                                if (filename == null || filename.equals("")) {
                                    break;
                                } else {
                                    Path path = Paths.get(filename);
                                    String storePath = servletContext.getRealPath("/upload");
                                    File uploadFile = new File(storePath + "/" + path.getFileName());
                                    item.write(uploadFile);
                                    System.out.println(storePath + "/" + path.getFileName());

                                }
                            }
                        }
                        id = Integer.parseInt(fields.get("id"));
                        u1 = d.getUserByID(1);
                        if (u1 == null) {
                            System.out.println("===Khong tim thay =====");
                            User newUser = new User();
                            newUser.setFullname(fields.get("fullname"));
                            newUser.setEmail(fields.get("email"));
                            newUser.setAddress(fields.get("address"));
                            newUser.setPhone(fields.get("phone"));
                            newUser.setDob(fields.get("dob"));
                            newUser.setAvatar(fields.get("avatar"));
                            d.update(newUser);
                            System.out.println("=========save=============");
                        }

                    } catch (Exception e) {

                    }

                    break;
            }
            request.setAttribute("UserTemp", d.getUserByID(1));
            request.getRequestDispatcher("user_profile_detail.jsp").forward(request, response);

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
