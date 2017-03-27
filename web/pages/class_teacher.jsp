<%-- 
    Document   : newteacher
    Created on : 21 Mar 2017, 11:16:51 PM
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
  
  <title>Teachers Class</title>
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <ul class="nav navbar-nav">
	      <li>
	        <a href="teacher.jsp"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	      </li>
	      <li>
	        <a href="#"><span class="header">Assign Class</span> </a>
	      </li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
                <li class="navbar-right">
	        <a href="../Logout"><span class="glyphicon glyphicon-log-out"></span></a>
	      </li>
	      <li class="navbar-right">
	        <a href="#"><span class="glyphicon "></span></a>
	      </li>
	    </ul>
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->

  <main>
    <center>
      <!-- Teacher Registration -->
      <div class="container">
        <form method="POST" action="../Class_Teacher" >
          <table>
            <tr>
              <td>
                <label>Teacher</label>
              </td>
              <td>
                <select name="staff_num">
                  <option value="456">Byte</option>
                  <option value="5632">Ben</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <label>Class</label>
              </td>
              <td>
                <select name="class_name">
                  <option value="10A">10A</option>
                  <option value="10B">10B</option>
                </select>
              </td>
            </tr>
          </table>
          <input type="submit" name="submit" value="Submit" />
        </form>
        <p>
        <a href="#" >More Info </a></p>
      </div>
    </center>
  </main>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>