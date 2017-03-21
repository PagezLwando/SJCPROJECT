<%-- 
    Document   : uploader
    Created on : 21 Mar 2017, 10:19:22 PM
    Author     : TerraByte
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

    <title>
      Hi-Upload
    </title>
  </head>
  <!-- Body -->
  <body>
    <!-- Nav Bar -->
    <nav class="navbar navbar-default navbar-static-top navbar-inverse">
      <div class="container">
        <ul class="nav navbar-nav navbar-left">
          <li>
            <a href="admin.jsp"><span class="glyphicon glyphicon-chevron-left"></span> </a>
          </li>
        </ul>
        <ul class="nav navbar-nav">
          <li>
            <h1><span class="header">Hi-Upload File</span></h1>
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
    <main>
      <center>
        <form action="../UploadMaterial" method="POST" enctype="multipart/form-data">
          <table>
            <tr>
              <td>
                <input type="file" name="file"/>
              </td>
              <td>
                <input class="text-justify" type="text"
                  name="description" placeholder="describe this file" />
              </td>
      <!--              <td>
                      <button class="btn btn-primary"><span class="glyphicon glyphicon-menu-down">
                        </span></button>
                    </td>-->
            </tr>
            <tr>
              <td> 
                <button type="submit" name="cancel" class="btn btn-danger"> 
                  <span style="width: 30px; height: 0px" class="glyphicon glyphicon-remove"></span>
                </button>
              </td>
              <td> 
                 <button type="submit" class="btn btn-primary">
                  <span style="width: 30px; height: 10px" class="glyphicon glyphicon-save-file"></span>
                </button>
              </td>
            </tr>
          </table>
        </form >
      </center>
    </main>
  </body>
</html>