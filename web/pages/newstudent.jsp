<%-- 
    Document   : newstudent
    Created on : 21 Mar 2017, 11:05:43 PM
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

<title>New Student</title>

</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <ul class="nav navbar-nav">
	      <li>
	        <a href="student.jsp"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	      </li>
	      <li>
	        <a href="#"><span class="header">Hi-New Student</span> </a>
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
      <div class="container">
        <form method="POST" action="../Student" >
          <table>
            <tr>
              <td>
                <label>Exam Number:</label>
              </td>
              <td>
                <input type='text' onChange="" name="exam_number"	placeholder='211217328'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>First Name:</label>
              </td>
              <td>
                <input type='text' onChange="" name="fname" placeholder='Terra'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Last Name:</label>
              </td>
              <td>
                <input type='text' onChange="" name="lname" placeholder='Byte'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Email:</label>
              </td>
              <td>
                <input type='email' onChange="" name="email" placeholder='byte@terra.com'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Grade:</label>
              </td>
              <td>
                <input type='text' onChange="" name="grade" placeholder='12'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Phone #:</label>
              </td>
              <td>
                <input type='text' onChange="" name="phone" placeholder='0785421365'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>School Admin:</label>
              </td>
              <td>
                <input type='text' onChange="" name="school_admin" placeholder='1212'/>
              </td>
            </tr>
          </table>
          <input type="submit" name="submit" value="Submit" />
        </form>
      </div>
    </center>
  </main>
  </body>
</html>
