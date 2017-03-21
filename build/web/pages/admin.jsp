<%-- 
    Document   : admin
    Created on : 21 Mar 2017, 10:17:51 PM
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
              Register New User 
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

	<!-- Teacher Registration -->
	<div class="registration">
		<a href="../pages/teacher.jsp">
		<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-user"></span></div>
			<div class="col-xs-4">Register a Teacher</div>
			<div class="col-xs-4"><span class="glyphicon glyphicon-chevron-right"></span></div>
		</div>	
		</a>		
	</div>
	<!-- Student Registration -->
	<div class="registration">
		<a href="../pages/student.jsp">
	 	<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-user"></span></div>
			<div class="col-xs-4">Register a Student</div>
			<div class="col-xs-4"><span class="glyphicon glyphicon-chevron-right"></span></div>
		</div>
		</a>
	</div>
  <!-- Add Subject to a School -->
  <div class="registration">
		<a href="#">
	 	<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-book"></span></div>
			<div class="col-xs-4">Add Subject</div>
			<div class="col-xs-4"><span class="glyphicon glyphicon-chevron-right"></span></div>
		</div>
		</a>
	</div>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>