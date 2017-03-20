
package com.db;



import com.models.Upload;
import com.models.AdminMaker;
import com.models.Comments;
import com.models.Register;
import com.models.SchoolAdminModel;
import com.models.StudentModel;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 *
 * @author USER
 */
public class DBAccess {

public DataSource getDataSource() throws Exception{
    InitialContext cxt = new InitialContext();
    if ( cxt == null ) {
        throw new Exception("Uh No Context Found!");
    } 
    //JNDI name must match in context and web.xml file. Late
    DataSource ds = (DataSource) cxt.lookup("java:comp/env/jdbc/InfiniteJoy");
    if ( ds == null ) {
        throw new Exception("Data Source Not Found!");
    }
    return ds;
}
    /**
 *  Returns a database connection
 * @return
 * @throws Exception 
 */
private Connection getConnection() throws SQLException{
Connection connection =null;
try{
 connection = getDataSource().getConnection();
}
catch(Exception ex){
    throw new SQLException("Database Connection Failed." + ex.getMessage());
}

 return connection;
} 
/**
 *  Closes all the database resources
 * @param rst
 * @param stmt
 * @param conn
 * @throws SQLException 
 */
private void closeDBResources(ResultSet rst, Statement stmt, Connection conn) throws SQLException{
    if (rst != null) {
      try { rst.close(); } catch (SQLException e) { ; }
      rst = null;
    }
    if (stmt != null) {
      try { stmt.close(); } catch (SQLException e) { ; }
      stmt = null;
    }
    if (conn != null) {
      try { conn.close(); } catch (SQLException e) { ; }
      conn = null;
    }
}
/**
 * 
 * @return admins
 */
public List getAllAdmins(){
     Connection conn = null;
        CallableStatement call = null;
        ResultSet res = null;
        List admin = new ArrayList();
        //testing for successfull creation of comment
//        boolean isCreated = false;
        try{
            
            //getting connection
            conn = this.getConnection();
            //auto commint false
//            conn.setAutoCommit(false);
            //calling a stored procedure createComment
            call = conn.prepareCall("{call getAllIjAdmins()}");
           
            
            //executing the procedure
            res = call.executeQuery();
            while(res.next()){
                admin.add(res.getString(1));
                admin.add(res.getString(2));
                admin.add(res.getString(3));
            }
        }catch(SQLException sqle){
            System.out.println("Admin Not Found!");
            sqle.printStackTrace();
        }
        return admin;
}
/**
 * 
 * @param school_number
 * @return school number
 */
public List getSchool(){
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List school = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getSchool()}");
        //executing the procedure
        res = call.executeQuery();
        while(res.next()){
            school.add(res.getString(1));
            school.add(res.getString(2));
            school.add(res.getString(3));
         }
    }catch(SQLException sqle){
        System.out.println("School Not Found!");
        sqle.printStackTrace();
    }
    return school;
}
/**
 * 
 * @param staff_num
 * @return a teacher
 */
public List getTeacher(int staff_num){
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List teacher = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getTeacher(?)}");
        //executing the procedure
        call.setInt(1, staff_num);
        res = call.executeQuery();
        while(res.next()){
            teacher.add(res.getInt(1));
            teacher.add(res.getString(2));
            teacher.add(res.getString(3));
            teacher.add(res.getString(4));
            teacher.add(res.getString(5));
            teacher.add(res.getInt(6));
         }
    }catch(SQLException sqle){
        System.out.println("Teacher Not Found!");
        sqle.printStackTrace();
    }
    return teacher;
}
/**
 * 
 * @param sub_name
 * @return a subject
 */
public List getSubject(String sub_name){
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List subject = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getSubject(?)}");
        //executing the procedure
        call.setString(1, sub_name);
        res = call.executeQuery();
        while(res.next()){
            subject.add(res.getString(1));
            subject.add(res.getString(2));
            subject.add(res.getString(3));
            subject.add(res.getString(4));
            subject.add(res.getInt(5));
            subject.add(res.getInt(6));
         }
    }catch(SQLException sqle){
        System.out.println("Subject Not Found!");
        sqle.printStackTrace();
    }
    return subject;
}
/**
 * 
 * @return a school admin
 */
public List getSchoolAdmin(){
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List school_admin = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getSchoolAdmin()}");
        //executing the procedure
        res = call.executeQuery();
        while(res.next()){
            school_admin.add(res.getInt(1));
            school_admin.add(res.getString(2));
            school_admin.add(res.getString(3));
            school_admin.add(res.getString(4));
            school_admin.add(res.getString(5));
            school_admin.add(res.getBoolean(6));
            school_admin.add(res.getInt(7));
            school_admin.add(res.getString(8));
            
         }
    }catch(SQLException sqle){
        System.out.println("School Admin Not Found!");
        sqle.printStackTrace();
    }
    return school_admin;
}
public boolean addStudent(StudentModel student) throws Exception{
   //to connect
   Connection conn = null;
   //to call stored statements
   CallableStatement call = null;
   boolean isAdded = false;
   
   try{
   
        //connecting to db
        conn = this.getConnection();
        //auto commit false
        conn.setAutoCommit(false);
        //calling stored statements
        call = conn.prepareCall("{call addStudent(?, ?, ?, ?, ?, ?, ?)}");
        //setting the parameters
        call.setInt(1, student.getExam_number());
        call.setString(2, student.getLast_name());
        call.setString(3, student.getFirst_name());
        call.setString(4, student.getGrade());
        call.setString(5, student.getEmail());
        call.setString(6, student.getPhone());
        call.setString(7, student.getSchool_admin());
        //ex
        int status = call.executeUpdate();
        
        isAdded = status > 0;
        if(isAdded){
            conn.commit(); //persisting data
        }else{
            conn.rollback();
            System.out.println("Error occured while addig a studnet.");
        }
        
   }catch(Exception exe){
       System.err.println("Error While Adding Student");
       exe.printStackTrace();
   }
   
   return isAdded;
}

public boolean addTeacher(Register teacher) throws Exception
    {
        java.sql.CallableStatement call = null;
        if(teacher.getStaff_num()== 0){
            throw new IllegalArgumentException("Enter valid staff number");
        }
        boolean isInserted=false;
                  
        Connection conn = null;
                  
        try {
                conn = this.getConnection();
                conn.setAutoCommit(false);
                call = conn.prepareCall("{call addTeacher(?,?,?,?,?,?)}");
                   
                call.setInt(1, teacher.getStaff_num());
                call.setString(2, teacher.getLastname());
                call.setString(3,teacher.getFirst_name());
                call.setString(4, teacher.getEmail_address());
                call.setString(5, teacher.getCell_number());
                call.setInt(6, teacher.getSchool_number());
                  
                      //check execution status
             
                int status= call.executeUpdate(); 
                if ( status > 0 ){
                    isInserted = true;
                    conn.setAutoCommit(true);
                }else{
                    isInserted=false;
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    return isInserted;
}
public boolean addSchoolAdmin(SchoolAdminModel school_admin) throws Exception
    {
        java.sql.CallableStatement call = null;
        if(school_admin.getSchool_admin_num()== 0){
            throw new IllegalArgumentException("Enter valid school admin number");
        }
        boolean isInserted=false;
                  
        Connection conn = null;
                  
        try {
                conn = this.getConnection();
                conn.setAutoCommit(false);
                call = conn.prepareCall("{call addTeacher(?,?,?,?,?,?)}");
                   
                call.setInt(1, school_admin.getStuff_num());
                call.setString(2, school_admin.getLast_name());
                call.setString(3,school_admin.getFirst_name());
                call.setString(4, school_admin.getEmail());
                call.setInt(5, school_admin.getCell_number());
                call.setInt(6, school_admin.getSchool_admin_num());
                  
                      //check execution status
             
                int status= call.executeUpdate(); 
                if ( status > 0 ){
                    isInserted = true;
                    conn.setAutoCommit(true);
                }else{
                    isInserted=false;
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    return isInserted;
}

public List loginCheck(String username, String password)throws Exception
  {
      //String query;
      boolean login = false;
      Connection conn = null;
      CallableStatement callStat = null;
      
      //String sql= "SELECT username, password FROM admins WHERE username=?";
        List adminList= new ArrayList();
      try{
          
          conn=this.getConnection();
          callStat = conn.prepareCall("{call getAdmin(?,?)}");
          callStat.setString(1, username);
          callStat.setString(2, password);
          
          ResultSet rs=callStat.executeQuery(); 
          while(rs.next()){
              login = true;
              AdminMaker admin = new AdminMaker();
              System.out.println("USERNAME: " + admin.getUsername());
              adminList.add(rs.getString(1));
              adminList.add(rs.getString(2));
       
            }
      }
      catch(SQLException e){
          e.printStackTrace();
      }
      return adminList;
  }  

/**
 * Charts
 */
public boolean postComment(Comments comment) throws Exception{
        CallableStatement call = null;
        if(comment.getExam_number() == null){
            throw new IllegalArgumentException("Enter valid staff number");
            
            
    }
        boolean isInserted=false;               
                  
       Connection conn = null;
       try{
       
            conn = this.getConnection();
            conn.setAutoCommit(false);
            call = conn.prepareCall("{call addChat(?,?,?,?)}");
            
            call.setString(1, comment.getExam_number());
            call.setString(2,comment.getLast_name());
            call.setString(3,comment.getFirst_name());
            call.setString(4,comment.getPost());
            
             int status= call.executeUpdate(); 
             if ( status > 0 ){
                isInserted = true;
                conn.setAutoCommit(true);
             }else{
                 isInserted=false;
                  }
            
            
       }catch(Exception e){
       e.printStackTrace();
        }
     return isInserted;
       }
    
    public List getAllChats()throws Exception{
        ArrayList<Comments> list = new  ArrayList<Comments>();
        CallableStatement call = null;
        ResultSet result = null;
        Connection conn = null;
        
        try {
             conn = this.getConnection();
            conn.setAutoCommit(false);
            call = conn.prepareCall("{call getAllChats()}");
            result = call.executeQuery();
            while(result.next()){
                Comments comment = new Comments(result.getString(1),
                        result.getString(2),result.getString(3),result.getString(4),result.getTimestamp(5));
                    list.add(comment);
            }
            
        } catch (Exception e) {
        } 
        finally{
            result.close();
            call.close();
//            closeConnection();
        }
        
    return list;
    }
    
        public boolean addFile(Upload upload) throws Exception{
        Connection conn=null;
        CallableStatement call=null;
        boolean isInserted=false;
        try{
        //connection to the db
        conn=getConnection();
        conn.setAutoCommit(false);
        call=conn.prepareCall("{call addfile(?,?,?,?,?)}");
        call.setString(1, upload.getFile_name());
        call.setString(2, upload.getSubject());
        call.setString(3, upload.getFile_description());
        call.setString(4, upload.getFile_location());
        call.setString(5, upload.getUploaded_by());
                                    
        int status=call.executeUpdate();

        isInserted = status>0;
        if(isInserted){
            conn.commit();
        }else{
            conn.rollback();
        }
        }
        catch(Exception exe){
            exe.printStackTrace();
        }
        return isInserted;
    }
}
