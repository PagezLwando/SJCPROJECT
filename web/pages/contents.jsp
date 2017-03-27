<%-- 
    Document   : subjects
    Created on : 21 Mar 2017, 10:18:55 PM
    Author     : TerraByte
--%>

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

<title>Student Subject</title>
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <ul class="nav navbar-nav">
	      <li >
	        <a href="student_subjects.jsp"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	      </li>
	      <li>
	        <span class="header"> <%= request.getParameter("subject") %></span>
	      </li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li class="navbar-right">
	        <a href="../Logout"><span class="glyphicon glyphicon-log-out"></span></a>
	      </li>
	      <li class="navbar-right">
	        <a href="#"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
	      </li>
	    </ul>
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->

	<!-- Teacher Registration -->
	<div class="post">
		
		<div class="row">
			<a href="#">
				<div class="col-xs-8 post-item">
					<span class="glyphicon glyphicon-file"></span>
					<span>Notes</span><br />
					<span class=""></span>
				</div>
				<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>
			</a>
		</div>
		<div class="row">
			<a href="#">
				<div class="col-xs-8 post-item">
					<span class="glyphicon glyphicon-folder-open"></span>
					<span>Previous Question Papers</span><br />
					<span class=""></span>
				</div>
				<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>
			</a>
		</div>
		<div class="row">
			<a href="#">
				<div class="col-xs-8 post-item">
					<span class="glyphicon glyphicon-book"></span>
					<span>Study Guides</span><br />
					<span class=""></span>
				</div>
				<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>
			</a>
		</div>
		
		<div class="row">
			<a href="#">
				<div class="col-xs-8 post-item">
					<span class="glyphicon glyphicon-share"></span>
					<span>Excersises & Solution</span><br />
					<span class=""></span>
				</div>
				<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>
			</a>
		</div>
		<div class="row">
      <a href="chatroom.jsp?subject=<%= request.getParameter("subject") %>">
				<div class="col-xs-8 post-item">
					<span class="glyphicon glyphicon-comment"></span>
					<span>Peer Help</span><br />
					
				</div>
				<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>
			</a>
		</div>
				
	</div>
	
	
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>