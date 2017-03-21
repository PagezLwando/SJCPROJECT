<%-- 
    Document   : newjsp
    Created on : 08 Nov 2016, 2:42:35 PM
    Author     : zodiac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <title>Hi-Login</title>
  </head>
  <body>
  <nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
      <ul class="nav navbar-nav">
        <li>
          <h1><span class="header">Hi-Login</span></h1>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
	      <li>
	        <a href="../"><span class="glyphicon glyphicon-home"></span> </a>
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
        <form method="POST" action="../Login" >
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
                <input type="submit" value="Login" class="btn btn-primary"/>     
                <input type="submit" value="Forgot Password?" class="btn btn-default"/>
              </td>
            </tr>
          </table>
        </form>
      </center>
    </article>
  <!-- footer here -->
  <footer>
    <p>Efinovation (Pty) Ltd.</p>
  </footer>
  </body>
</html>
