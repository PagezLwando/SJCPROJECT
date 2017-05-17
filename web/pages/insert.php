	<?php
		include('applyNow.php');
		ini_set('max_execution_time', 3000);

	   $con =new mysqli('localhost', 'root', '');
	   if (!$con) {
	   	   echo 'Database not connected!. Please try again';
	   }
	   if (!mysqli_select_db($con,'test')) {
	   	echo 'Database not selected!...';
	   }
	   if(isset($_POST['Fname'])){
	   $Fname = $_POST['Fname'];
	}
	if(isset($_POST['Lname'])){
	   $Lname = $_POST['Lname'];
	}
	if(isset($_POST['dob'])){
	   $dob = $_POST['dob'];
	}
	if(isset($_POST['Idnumber'])){
	   $Idnumber = $_POST['Idnumber'];
	}
	if(isset($_POST['email'])){
	   $email = $_POST['email'];
	}
	if(isset($_POST['cellnumber'])){
	   $cnumber = $_POST['cellnumber'];
	}

	$sql = "INSERT INTO student (Fname, Lname, dob, Idnumber, email, cnumber) VALUES ('$Fname', '$Lname', '$dob', '$Idnumber', '$email', '$cnumber')";

	if ($con->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $con->error;
	}

	$con->close();
	   /*header(url,"../access/applyNow.php");*/
	?>