<?php
	$con = mysqli_connect("localhost","root","");
	date_default_timezone_set ("America/Caracas");
	mysqli_select_db($con,"laboratorio");
	if(!$con){
			die("Failed to connect");
			}

?>
