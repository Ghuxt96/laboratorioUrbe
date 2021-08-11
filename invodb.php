
<?php
include 'connect.php';

if(isset($_POST['submit']))
  {
	  $in_pname  = $_POST['pid'];
	  $in_dname  = $_POST['dname'];
	  $in_age    = $_POST['age'];
	  $in_examA   = $_POST['a'];
	  $in_examB   = $_POST['b'];
	  $in_examC   = $_POST['c'];
	  $in_examD   = $_POST['d'];
	  $in_examE   = $_POST['e'];
	  $in_examF   = $_POST['f'];
	  $in_examG   = $_POST['g'];
	  $invo_date = date("Y-m-d H:i:s");




	$query = "INSERT INTO `pet_invo`
	( `invo_Pet_name`, `invo_pet_id`, `invo_pet_age`, `invo_date`, `examA_charge`, `examB_charge`, `examC_charge`, `examD_charge`, `examE_charge`,`examF_charge`, `examG_charge`)
	VALUES
	('$in_dname','$in_pname','$in_age','$invo_date','$in_examA','$in_examB',$in_examC,'$in_examD','$in_examE','$in_examF','$in_examG')";

	  if(mysqli_query($con,$query)){
		  		   $success =  '<div align="center" class="alert alert-success">Registro Exitoso</div>';
	  		}


  }
?>
