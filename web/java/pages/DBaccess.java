package pages;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
/**
 *
 * @author Lwando
 */
public class DBaccess extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        static final String JDBC_DRIVER="com.mysql.jdbc.Driver";
        static final String DB_URL="jdbc:mysql://localhost/TEST";
        
        static final String USER="root";
        static final String PASS="password";
        
        //Set response content
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String title = "Database Result";
        String stmt = null;
        String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " +
                            "transitional//enn\">\n";
        out.println(docType + 
                        "<html>\n" +
                        "<head><title>" + title + "</title></head>\n" +
                        "<body bgcolor=\"#f0f0f0\">\n" +
                        "<h1 align=\"center\">" + title + "</h1>\n");
        try{
            //Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            
            //Open connnection
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            
            //execute SQL query
            stmt = conn.creatStatement();
            String sql;
            sql = "SELECT id, user, pass FROM TableDAta";
            ResultSet rs = stmt.executeQuery(sql);
            
            //extract data from result set
            while(rs.next()){
                //retrieve by column name
                int id = rs.getInt("id");
                String user = rs.getString("user");
                String pass = rs.getString("pass");
                
                //Display values
                out.println("ID: " + id + "<br>");
                out.println("Username: " + user + "<br>");
                out.println("Password: " + pass + "<br>");
            }
            out.println("</body></html>");
            
            //Clean-up environment
            rs.close();
            stmt.close();
            conn.close();
            }
            catch(SQLException se){
                //Handle errors for JDBC
                se.printStackTrace();
        }
           catch(Exception e){
                e.printStackTrace();
        }
        finally{
                //finally block used to close resourses
                try{
                    if(stmt!=null)
                        stmt.close();
                }
                catch(SQLException se2){
                    
                }//do nothing
            try{
                if(conn!=null)
                    conn.close();
            }
            catch(SQLException se){
                se.printStackTrace();
            }//end finally try
        }//end try
    }
}