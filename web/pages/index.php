<html>
	<head>
	   <title>
	   		Connect SQL
	   </title>
	</head>
	<body>
		<?php
			$dbhost = 'localhost:8080';
			$dbuser = 'root';
			$dbpass = 'root';
			$conn = mysql_connect($dbhost, $dbuser, $dbpass);
			if($conn)
			{
				die('Connect failed: ' . mysql_error());
			}
			echo "Connected successfully";
			mysql_close($conn);
		?>
	</body>