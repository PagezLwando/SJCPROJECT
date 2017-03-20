/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;


import com.db.DBAccess;
import com.models.Upload;
import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
//import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.disk.DiskFileItemFactory;
//import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadMaterial extends HttpServlet {
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//            processRequest(request, response);

    }

    private final String UPLOAD_DIRECTORY = "C:\\apache-tomcat-7.0.37\\webapps\\docs\\uploads";
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        if(ServletFileUpload.isMultipartContent(request)){
            
        try {
        List<FileItem> multiparts = new ServletFileUpload(
            new DiskFileItemFactory()).parseRequest((RequestContext) request);
        String name = "";
        for(FileItem item : multiparts){
            if(!item.isFormField()){
                 name = new File(item.getName()).getName();
                 item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                }
        }
            DBAccess db = new DBAccess();
        Upload teacher = new Upload(name, "Math", "Long Devision", UPLOAD_DIRECTORY,"terra");
        boolean isFileAdded = db.addFile(teacher);
        if(isFileAdded){
           System.out.println("Added");
            request.setAttribute("message", "File Uploaded Successfully"); 
        }else{
            System.out.println("Not Added");
            request.setAttribute("message", "File Uploaded Successfully");
        }
            
        }
        catch (Exception ex) {
            
            request.setAttribute("message", "File Upload Failed due to " + ex);
        }         
        }else{
            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
        }
        request.getRequestDispatcher("pages/loader.jsp").forward(request, response);
        }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
