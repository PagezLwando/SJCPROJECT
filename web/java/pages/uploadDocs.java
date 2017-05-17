/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pages;

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

/**
 *
 * @author Lwando
 */

public class uploadDocs extends HttpServlet{
//import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.disk.DiskFileItemFactory;
//import org.apache.commons.fileupload.servlet.ServletFileUpload;
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//            processRequest(request, response);

    }

    private final String UPLOAD_DIRECTORY = "C:\\apache-tomcat-7.0.37\\webapps\\docs\\sjcdocs";
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
        Upload applicant = new Upload(name, "Documents", 
                        "Grade 8 or grade 9 results", UPLOAD_DIRECTORY,"pages");
        boolean isFileAdded = db.addFile(applicant);
        if(isFileAdded){
           System.out.println("Document Added");
            request.setAttribute("message", "File Uploaded Successfully"); 
        }else{
            System.out.println("Document Not Added");
            request.setAttribute("message", "File Uploaded Successfully");
        }
            
        }
        catch (Exception ex) {
            
            request.setAttribute("message", "File Upload Failed Because " + ex);
        }         
        }else{
            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
        }
//        request.getRequestDispatcher("pages/uploader.html").forward(request, response);
        response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "pages/uploader.jsp");
        }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
