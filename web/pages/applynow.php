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
				<li><a href="../index.html"> Home page </a></li>
				<li><a href="../pages/about.htm"> About </a></li>
				<li><a href="../pages/alumni.html"> Alumni </a></li>
				<li class="active"><a href="../pages/applynow.php"> Apply </a></li>
				<li><a href="../pages/contact.htm"> Contact </a></li>
				<li><a href="../pages/gallery.htm"> Gallery </a></li>
				<li style="float: right;"><a input="text" name="search">
				  <span class="glyphicon glyphicon-search"></span>
				</a></li>
				<li style="float: right;"><a href="../pages/home.htm">
				  <span class="glyphicon glyphicon-home"></span>
				</a></li>
			</ul>
		</div>
			<h2> Apply online now </h2>
		<p>
			<form action="insert.php" method="POST">
		<h4> Personal Details </h4>
			First Name:<br>
				<input type="text" name="Fname" placeholder="Firstname:" required>
				<br>
			Last Name:<br>
				<input type="text" name="Lname" placeholder="Last Name:" required>
				<br>
			Title: 
				<input type="checkbox" name="Mr" value="Mr"> Mr 
				<input type="checkbox" name="Miss" value="Miss"> Miss
				<input type="checkbox" name="Mrs" value="Mrs"> Mrs <br>
					(Please check one of the boxes above)
				<br>
			Gender: &nbsp
				<input type="radio" name="male" value="Male" > Male
				<input type="radio" name="female" value="Female" > Female
				<br>
			Date of Birth:<br>
				<input type="text" name="dob" placeholder="Date of Birth:" required>
				<br>
			Identity No.:<br>
				<input type="text" name="Idnumber" placeholder="id no." required>
				<br>
			Email Address:<br>
				<input type="text" name="email" placeholder="E-mail" required>
					(Used for communication only or help send you documents)
				<br>
			Cell Number: <br>
				<input type="text" name="cellnumber" placeholder="Cell Number:" />
			<hr>
		<h4> Next of kin </h4>
			First Name:<br>
				<input type="text" name="fname" placeholder="First Name:" required>
				<br>
			Last Name:<br>
				<input type="text" name="lname"  placeholder="Last Name:" required>
				<br>
			Identity number:<br>
				<input type="text" name="Id" placeholder="ID no." required>
				<br>
			E-mail Address:<br>
				<input type="text" name="e-mail" placeholder="E-mail Address" required>
				<br>
			Cell Number:<br>
				<input type="text" name="Pcellphone" placeholder="Cell number:" />
				<hr>
		<h4> Address For Postal Deliveries </h4><br>
			country: &nbsp
			<select name="countries">
				<option name="--select--"> -- select-- </option>
				<option name="South Africa"> South Africa </option>
				<option name="Zimbabwe"> Zimbabwe </option>
				<option name="Mozambique"> Mozambique </option>
				<option name="Botswana"> Botswana </option>
				<option name="Zambia"> Zambia </option>
				<option name="Nigeria"> Nigeria	</option>
			</select>
				<br>
			Postal Address:<br>
				<input type="text" name="address" placeholder="P.O Box" required><br>
				<input type="text" name="address" placeholder="Mthatha" required><br>
				<input type="text" name="code" placeholder="South Africa" required><br>
			Postal code:<br>
				<input type="text" name="code" placeholder="Postal Code" required>
				<br>
				<br>
				<hr>
		<h4> Phone Details </h4>
			<h6> Home </h6>
				Fax Number:<br>
					<input type="text" name="fax" placeholder="Fax number:" required>
					<br>
					<br>
					<input type="checkbox" name="Yes" required>
					Terms and conditions<br>
					(Please read the <a href="../access/termsAndConditions.htm">terms and conditions</a>)
					<br>
					<br>
				<input type="submit" name="submit" value="Submit">
				<input type="reset" name="cancel" value="Cancel">
				<br>
				<br>

		</form>
		</p>
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