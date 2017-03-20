<%-- 
    Document   : newjsp
    Created on : 08 Nov 2016, 2:42:35 PM
    Author     : zodiac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
  </head>
  <body>
  <nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
      <ul class="nav navbar-nav navbar-right">
	      <li>
	        <a href="../index.jsp"><span class="glyphicon glyphicon-home"></span> </a>
	      </li>
	    </ul>
      <ul class="nav navbar-nav">
        <li>
          <h1><span>Hi-Login</span></h1>
        </li>
      </ul>
	  </div>
	</nav> <!-- End Nav Bar -->
    <header>
      <h1>
        <img src="../images/logo.PNG"/>
      </h1>
    </header>
    <article>
      <center>
        <form method="POST" action="../" >
          <table>
            <tr>
              <td>
                <label><b> Username</b></label>
              </td>
            </tr>
            <tr>
              <td>
                <input type="text" name="username" value="" placeholder="Username" />
              </td>
            </tr>
            <tr>
              <td>
                <label><b> Password</b></label>
              </td>
            </tr>
            <tr>
              <td>
                <input type="password" name="password" value="" placeholder="Password"/>
              </td>
            </tr>
            <tr>
              <td>
                <input type="radio" name="stand" value="A"  />Admin
                <input type="radio" name="stand" value="S" />Student
                <input type="radio" name="stand" value="T" />Teacher
              </td>
            </tr>
            <tr>
              <td>
                <input type="submit" value="Login" class="btn btn-primary"/>     
                <input type="submit" value="Forgot Password?" class="btn btn-default"/>
              </td>
            </tr>
          </table>
        </form>
      </center>
    </article>
  </body>
</html>
