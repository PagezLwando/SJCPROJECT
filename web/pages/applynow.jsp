<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : applynow
    Created on : May 12, 2017, 10:04:34 PM
    Author     : Lwando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/styles.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<title>
		SJC | Apply
	</title>
</head>
<body style="background-color: #6495ED;">
	<h1>
	  <img src="../images/web.gif" width="90" height="90"> St Johns College </h1>
	<hr>
	<div class="container">
		<div>
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
                                        <span class="glyphicon glyphicon-search"></span>
                                    </a></li>
				<li style="float: right;">
                                    <a href="../pages/home.jsp">
                                        <span class="glyphicon glyphicon-home"></span>
                                    </a>
                                </li>
			</ul>
		</div>
		<h2> Apply online now </h2>
		<p>
                    <form action="uploadFile.jsp" method="POST">
		<h4> Personal Details </h4>
                    <label> First Name: </label>
                    <fieldset>
                        <input type="text" name="Fname" placeholder="Firstname:" required>
                    </fieldset>
                    <label> Last Name: </label>
                    <fieldset>
                        <input type="text" name="Lname" placeholder="Last Name:" required>
                    </fieldset>
                    <label> Title: </label> 
                    <fieldset>
                        <input type="checkbox" name="Mr" value="Mr"> Mr 
			<input type="checkbox" name="Miss" value="Miss"> Miss
                        <input type="checkbox" name="Mrs" value="Mrs"> Mrs 
                    </fieldset>
					(Please check one of the boxes above)
                    <label> Gender: </label>
                    <fieldset>
                        <input type="radio" name="male" value="Male" > Male
			<input type="radio" name="female" value="Female" > Female
                    </fieldset>
                    <label> Date of Birth: </label>
                    <fieldset>
                        <input type="text" name="dob" placeholder="Date of Birth:" required>
                    </fieldset>
                    <label> Identity No.: </label>
                    <fieldset>
                        <input type="text" name="Idnumber" placeholder="id no." required>
                    </fieldset>
                    <label> Email Address:</label>
                    <fieldset>
                        <input type="text" name="email" placeholder="E-mail" required>
			(Used for communication only or help send you documents)
                    </fieldset>
                    <label> Cell Number: </label>
                    <fieldset> 
                        <input type="text" name="cellnumber" placeholder="Cell Number:" />
                    </fieldset>
			<hr>
		<h4> Next of kin </h4>
                <label> First Name: </label>
                <fieldset> 
                    <input type="text" name="fname" placeholder="First Name:">
                </fieldset>
                <label> Last Name:</label>
                <fieldset>
                    <input type="text" name="lname"  placeholder="Last Name:">
                </fieldset>
                <label> Identity number:</label>
                <fieldset>
                    <input type="text" name="Id" placeholder="ID no." required>
                </fieldset>
                <label> E-mail Address: </label>
                <fieldset>
                    <input type="text" name="e-mail" placeholder="E-mail Address" required>
                </fieldset>
		<label> Cell Number: </label>
                <fieldset>
                    <input type="text" name="Pcellphone" placeholder="Cell number:" />
                </fieldset>
		<h4> Address For Postal Deliveries </h4><br>
                <label> country: </label>
                <fieldset>
                    <select name="countries">
			<option name="--select--"> -- select-- </option>
			<option name="South Africa"> South Africa </option>
			<option name="Zimbabwe"> Zimbabwe </option>
			<option name="Mozambique"> Mozambique </option>
			<option name="Botswana"> Botswana </option>
			<option name="Zambia"> Zambia </option>
			<option name="Nigeria"> Nigeria	</option>
		    </select>
                </fieldset>
                <label> Postal Address: </label>
                <fieldset>
                    <input type="text" name="address" placeholder="P.O Box" required><br>
                    <input type="text" name="address" placeholder="Mthatha" required><br>
                    <input type="text" name="code" placeholder="South Africa" required>
                </fieldset>
                <lable> Postal code: </lable>
                <fieldset>
                    <input type="text" name="code" placeholder="Postal Code" required>
                </fieldset>
		<input type="checkbox" name="Yes" required>
                    Terms and conditions<br>
                    (Please read the 
                        <a href="../access/termsAndConditions.htm">terms and conditions</a>)
		<input type="submit" name="submit" value="Submit">
		<input type="reset" name="cancel" value="Cancel">
	</form>
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