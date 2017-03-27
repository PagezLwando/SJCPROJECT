<%-- 
    Document   : chatroom
    Created on : 21 Mar 2017, 10:18:30 PM
    Author     : TerraByte
--%>

<%@page import="com.models.Comment"%>
<%@page import="java.util.List"%>
<%@page import="com.models.Chat"%>
<%@page import="java.util.ArrayList"%>
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
	        <a href="contents.jsp?subject=<%= request.getParameter("subject") %>"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	      </li>
	      <li>
          <span class="header">Hi-Peer Help <%= request.getParameter("subject") %></span>
	      </li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li class="navbar-right">
	        <a href="#"><span class="glyphicon glyphicon-education"></span></a>
	      </li>
	    </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="navbar-right">
          <a href="../Logout"><span class="glyphicon glyphicon-log-out"></span></a>
        </li>
      </ul>
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->
       
     <%
    DBAccess db = new DBAccess();
    List<Chat> subject_chat = (ArrayList)db.getSubjectChats((String)request.getParameter("subject"));
      
    if(!subject_chat.isEmpty()) {
      for(int i = 0; i < subject_chat.size(); i++) {
        System.out.println("topic " + subject_chat.get(i).getComment_posted());
  %>
  	<!--Subject Chat -->
    
    <!-- Teacher Registration -->
	<div class="registration">
		
		<div class="row">
			
			<div class="col-xs-4">
				<span class="glyphicon glyphicon-user"></span>
				<span class=""><%= subject_chat.get(i).getStudent_exam_num() %>:</span>
				<span class="text-info" style="font-size: 12px; text-align: right"><%= subject_chat.get(i).getTime_stamp() %></span><br/>
				<span class="text-uppercase"><%= subject_chat.get(i).getComment_posted() %></span><br />
			</div>
      <!-- Help -->
			<div class="col-xs-5">
         <%
          List<Comment> comment = (ArrayList)db.getComment(subject_chat.get(i).getComment_posted());
         
          if(!comment.isEmpty()) {
            for(int j = 0; j < comment.size(); j++) {
              System.out.println("Comment " + comment.get(j).getComment());
        %>
        <p class="text-lowercase"><%= comment.get(j).getComment() %> 
          <span class="text-info" style="font-size: 16px">by <%= comment.get(j).getCommentor() %></span></p>
        <%  
            }
          }
          %>
			</div>
			<!-- Help -->
			<div class="col-xs-3">
			<a href="../pages/topic_comment.jsp?subject=<%= request.getParameter("subject")%>
         &topic= <%= subject_chat.get(i).getComment_posted()%>&topic_date= <%= subject_chat.get(i).getTime_stamp()%>" 
         class="btn btn-info"><span>Help Peer</span></a> <!-- Reply with a Glyphicon -->
			</div>
		</div>		
	</div>
  <%
      }
    } else {
      session.setAttribute("subject", "No Subjects");
    }
   %>	
	<a href="../comments/commentList.jsp?subject=<%= request.getParameter("subject") %>"
     class="btn btn-primary"><span class="btn glyphicon glyphicon-plus"></span></a>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>