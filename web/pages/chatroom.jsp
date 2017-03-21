<%-- 
    Document   : chatroom
    Created on : 21 Mar 2017, 10:18:30 PM
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
	        <a href="subjects.jsp"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	      </li>
	      <li>
	        <span class="header">Hi-Peer Help</span>
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

	<!-- Teacher Registration -->
	<div class="registration">
		
		<div class="row">
			
			<div class="col-xs-12">
				<span class="glyphicon glyphicon-user"></span>
				<span class="time">1:30pm</span>
				<span>Please Help with HTML</span><br />
				<span class="">Terra</span>

			</div>
		</div>
		<div class="row">
			<!-- Username -->
			<div class="col-xs-6">
			<a href="#" class="btn btn-info"><span>Help Peer</span></a> <!-- Reply with a Glyphicon -->
			</div>
			<div  class="col-xs-6">
				<span class="glyphicon glyphicon-comment text-info comment"></span> <!-- Number of comments for a comment -->
			</div>
		</div>	
				
	</div>
	<div class="registration">
		
		<div class="row">
			
			<div class="col-xs-12">
				<span class="glyphicon glyphicon-user"></span>
				<span class="time">5:30am</span>
				<span>What are Sequence Diagrams</span><br />
				<span class="">Sipho</span>

			</div>
		</div>
		<div class="row">
			<!-- Username -->
			<div class="col-xs-6">
			<a href="#" class="btn btn-info"><span>Help Peer</span></a> <!-- Reply with a Glyphicon -->
			</div>
			<div  class="col-xs-6">
				<span class="glyphicon glyphicon-comment text-info comment"><span class="badge">5</span> </span><!-- Number of comments for a comment -->
			</div>
		</div>		
	</div>
        <span class="addComment"><a href="../comments/commentList.jsp" class="btn glyphicon glyphicon-plus"></a></span>
	
	
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>