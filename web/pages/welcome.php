<!DOCTYPE html>
<html xmlns="">
<head id="head">

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" type="text/css" href="../css/styles.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<title>
		Welcome
	</title>
</head>
<body style="background-color: #6495ED;">
	<h1><img src="../images/web.gif" width="90" height="90"> St Johns College </h1>
	<hr>
	<div class="container">
		<div>
			<ul>
				<li><a href="../index.html"> Home page </a></li>
				<li><a href="../access/about.htm"> About </a></li>
				<li><a href="../access/alumni.html"> Alumni </a></li>
				<li><a href="../access/applyNow.php"> Apply </a></li>
				<li><a href="../access/contact.htm"> Contact </a></li>
				<li><a href="../access/gallery.htm"> Gallery </a></li>
				<li style="float: right;"><a input="text">
					<img src="../images/Searchicon.png" width="18" height="18">
				</a></li>
				<li style="float: right;"><a href="../access/home.htm">
					<img src="../images/home.jpg" width="18" height="18"></a></li>
				<li><a href="../index.html">Log Out...</a></li>
			</ul>
		</div><br>
		<h2> Welcome </h2>

		<p>
			<form action="grade10.php" method="POST">
			 <h6> Select your main stream subject </h6>
			 <h3> This form is for a grade 09 learner </h3>
			    <input type="checkbox" name="math" placeholder="Math" />
			    Maths<br>
			    <input type="checkbox" name="Physics" placeholder="Physics" />Physics<br>
			    <input type="checkbox" name="Eng" placeholder="English" />
			    English<br>
			    <input type="checkbox" name="Xh" placeholder="Isixhosa" />
			    Isixhosa<br>
			    <input type="checkbox" name="LO" placeholder="Life Orientation" />Life Orientation<br>
			    <input type="checkbox" name="LS" placeholder="Life Sciences" />
			    Life Sciences
	              <br>
	              <br>
	            Subject: 
		            <select name="subject">
		            	<option name="--select--"> --Select Your Main Stream-- </option>
		                <option name="Accounting"> Accounting </option>
		            	<option name="Agriculture"> Agriculture </option>
		            	<option name="Cat"> Computer Applications Technology </option>
		            	<option name="Geography"> Geography </option>
		            	<option name="Tourism"> Tourism </option>
		            </select>
		            <br>
		            <br>
		            <input type="submit" name="submit" value="Submit">
		            <input type="reset" name="cancel" value="Cancel">
		            <hr>
			</form>
			<h3> This form is for garde 07 learner </h3>
			<form action="grade08.php" method="POST">
			First Name:
				<input type="text" name="first" placeholder="First Name:" required>
				<br>
				<br>
			Last Name:
				<input type="text" name="last" placeholder="Last Name:" required>
				<br>
				<br>
			Subjects:
				<select name="subject2">
					<option name="--select--"> --Select Your Main Stream-- </option>
					<option name="Accounting"> Accounting </option>
					<option name="Agriculture"> Agriculture </option>
					<option name="Geography"> Geography </option>
					<option name="Tourism"> Tourism </option>
				</select>
				<br>
				<br>
				<input type="submit" name="submit" value="Submit">
				<input type="reset" name="cancel" value="Cancel">
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