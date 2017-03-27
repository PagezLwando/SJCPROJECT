<%-- 
    Document   : student
    Created on : 21 Mar 2017, 10:18:42 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=9">
  <meta name="viewport" content="width=device-width; initial-scale=1"/>
  
  <link rel="stylesheet" type="text/css" href="../css/main.css" />
  <script type="text/javascript" src="../js/bootstrap.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />

<title>Student Portal</title>

</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <ul class="nav navbar-nav">
	      <li>
	        <a href="admin.jsp"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	      </li>
	      <li>
	        <a href="#"><span class="header">Students Portal</span> </a>
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
  <main>
    <center>
      <a href="newstudent.jsp" class="btn btn-primary">New Student</a>
      <a href="student_subject.jsp" class="btn btn-primary">Assign Subject</a>
      <a href="#" class="btn btn-danger">Delete Student</a>
    </center>
  </main>
	
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>