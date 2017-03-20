/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.db.DBAccess;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * School Admin Login
 * @author zodiac
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        
       String disp="login/login.jsp";
       
       String username=request.getParameter("username");
       String password =request.getParameter("password");
       String stand = request.getParameter("stand");
       
       ArrayList<String> errors = new ArrayList<String>();
       
        if(username==null||username.trim().length()==0)
            errors.add("Username not supplied");
        if(password==null||password.trim().length()==0)
            errors.add("Password not supplied");
            
        try{
            if(errors.isEmpty()){
                DBAccess dao = new DBAccess();
                List comeIn = dao.loginCheck(username, password);
                System.out.println("ADMIN LIST: " + comeIn);
                if(comeIn.isEmpty()){
                    errors.add("Your login details not on the system"
                            + " consult admin to add you to the database");
                }
                else{
                    String pageTo = null;
                    if(stand.equalsIgnoreCase("S")){   
                        RequestDispatcher dir = request.getRequestDispatcher("pages/subjects.html");
                        dir.forward(request, response);
                    }
                    else if(stand.equalsIgnoreCase("A")){
                        
                        pageTo = "pages/admin.html";
                        response.setStatus(response.SC_MOVED_TEMPORARILY);
                        response.setHeader("Location", pageTo);
//                        RequestDispatcher dir = request.getRequestDispatcher("pages/admin.html");
                        //dir.forward(request, response);
                    }else if(stand.equalsIgnoreCase("T")){
                       // RequestDispatcher dir=null;
                       
                         pageTo = "pages/teacher.html";
                        response.setStatus(response.SC_MOVED_TEMPORARILY);
                        response.setHeader("Location", pageTo);
                                //public void HttpServletRespose.sendRedirect("pages/teacher.html") throws IOException;
                        //dir.forward(request, response);
                    }else 
                        errors.add("Please tick relevant");
                }
                request.setAttribute("successMsg","You entered " + username + "  for a user name");  
            } 
        }
        catch(Exception exe){
            exe.printStackTrace();
            RequestDispatcher dir = request.getRequestDispatcher(disp);
            dir.forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
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
