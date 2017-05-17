<%-- 
    Document   : uploadFile
    Created on : May 15, 2017, 2:57:12 PM
    Author     : Lwando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" type="text/css" href="../css/styles.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title> SJC | DocsUpload </title>
        <style>
            p{
                padding: 20px 20px 20px 20px;
                border: 1px #003344;
            }
            body{
                background-color: #6495ED;
            }
        </style>
    </head>
    <body>
	<h1>
	  <img src="../images/web.gif" width="90" height="90"> St Johns College </h1>
	<hr>
	<div class="backColor">
            <ul>
		<li><a href="../index.jsp"> Home page </a></li>
		<li><a href="../pages/about.jsp"> About </a></li>
		<li><a href="../pages/alumni.jsp"> Alumni </a></li>
		<li class="active">
                    <a href="../pages/applynow.jsp"> Apply </a></li>
		<li><a href="../pages/contact.jsp"> Contact </a></li>
		<li><a href="../pages/gallery.jsp"> Gallery </a></li>
                <li style="float: right;">
                    <a input="text" name="search">
                    <span class="glyphicon glyphicon-search"></span></a></li>
		<li style="float: right;">
                    <a href="../pages/home.jsp">
                    <span class="glyphicon glyphicon-home"></span></a></li>
            </ul>
        </div>
        <h2> Applicants Documents </h2>
        <p>
            <input type="checkbox" name="AcademicResults"> Academic Results
            <br>
            <input type="checkbox" name="IdentityCopy"> Identity Document
        <form action="../uploadFile" method="POST" enctype="multipart/form-data">
          <center>
              <table>
                  <tr>
                      <td>
                        <input type="file" name="file"/>
                      </td>
                  </tr>
                  <tr>
                      <td>
                        <button type="submit" name="cancel" class="btn btn-danger">
                            Submit File </button>
                        <button type="submit" class="btn btn-primary">
                            Save File </button>
                      </td>
                  </tr>
              </table>
          </center>
        </form>
    </p>
    </body>
</html>
