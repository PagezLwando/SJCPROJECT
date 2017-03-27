<%-- 
    Document   : admin
    Created on : 21 Mar 2017, 10:17:51 PM
    Author     : TerraByte
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=9">
  <meta name="viewport" content="width=device-width; initial-scale=1"/>
  
  <script type="text/javascript" src="../js/bootstrap.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/main.css" />
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
  
	<title>Registration</title>
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <ul class="nav navbar-nav">
	      <li >
	        <a href="../login/login.jsp"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	      </li>
	      <li>
	        <a href="#">
            <span class="header">
              Enrolled Subjects
            </span> 
          </a>
	      </li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
                <li class="navbar-right">
	        <a href="../Logout"><span class="glyphicon glyphicon-log-out"></span></a>
	      </li>
	      <li class="navbar-right">
	        <a href="#"><span class="glyphicon ">?</span></a>
	      </li>
	    </ul>
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->

  <%
    DBAccess db = new DBAccess();
    System.out.println((String)session.getAttribute("id"));
    ArrayList student_subject = (ArrayList)db.getStudent_Subject((String)session.getAttribute("id"));
      
    if(!student_subject.isEmpty()) {
      System.out.println(student_subject);
      for(int i = 0; i < student_subject.size(); i++) {
        
  %>
  	<!-- Student Subject -->
	<div class="registration">
    <a href="contents.jsp?subject=<%= student_subject.get(i) %>" >
		<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-book"></span></div>
			<div class="col-xs-4"><%= student_subject.get(i) %></div>
			<div class="col-xs-4"><span class="glyphicon glyphicon-chevron-right"></span></div>
		</div>	
		</a>		
	</div>
  <%
      }
    } else {
      session.setAttribute("subject", "No Subjects");
    }
   %>
	
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>