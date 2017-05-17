<%-- 
    Document   : home
    Created on : May 13, 2017, 5:15:31 PM
    Author     : Lwando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/styles.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<title>
		SJC | Home
	</title>
</head>
<body style="background-color: #6495ED;">
	<h1><img src="../images/web.gif" width="90" height="90"> St Johns College </h1>
	<hr>
	<div class="container">
		<div class="nav">
			<ul>
				<li><a href="../index.jsp"> Home page </a></li>
				<li><a href="../pages/about.jsp"> About </a></li>
				<li><a href="../pages/applynow.jsp"> Apply </a></li>
				<li><a href="../pages/contact.jsp"> Contact </a></li>
				<li><a href="../pages/gallery.jsp"> Gallery </a></li>
				<li style="float: right;"><a input="text">
				  <span class="glyphicon glyphicon-search"></span>
				</a></li>
				<li style="float: right;"class="active"><a href="../pages/home.jsp"><span class="glyphicon glyphicon-home"></span></a></li>
			</ul>
		</div>
		<marquee> 
			<img src="../images/background.jpg">
			<img src="../images/jimandDredd.jpg">
		  	<img src="../images/joy.jpg">
		</marquee>
		<div class="footer">
			&copy 2016 St John's College<br>
			Developed by <a href="lwandonodume@gmail.com">lwandonodume@gmail.com</a>
			<div class="div">
				<a href="#"><img src="../images/facebook.jpg" width="20" height="20"></a>
				<a href="#"><img src="../images/instagram.png" width="20" height="20"></a>
				<a href="#"><img src="../images/youtube.jpg" width="20" height="20"></a>
				<a href="#"><img src="../images/location.jpg" width="20" height="20"></a>
			</div>
		</div>
	</div>
</body>
</html>