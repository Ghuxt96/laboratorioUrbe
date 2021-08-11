<?php include 'connect.php';?>
<?php include 'invodb.php';?>
<?php include 'lvlauth.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Hospital ConfiguroWeb</title>
<link rel="stylesheet" type="text/css" href="css/staff.css"/>
</head>
<script type="text/javascript" src="js/rightde.js"></script>
<body>
<?php include_once('navbar.php');?>
<div class="container">
<div class="row">
<div class="col-md-12 col-xs-12">

<h1 class="text-center ">Clinica Mi Sagrada Familia<br /><small style="font-size:20px">Sistema de Laboratorio Clinico</small></h1></div>

<div class="page-header">
<h3 style="font-family:calibri;" class="text-center">Examenes de Laboratorio</h3></div>
<br />


<div class="container">
<div class="row ">
<div class="col-md-4 col-md-offset-4 col-xs-12">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title text-center">Examenes</h3>
</div>
<center>
<div class="panel-body">
<small class="text-danger">Todos los campos son requeridos</small>
<div>
  <?php
  require('connect.php');
  $id=$_REQUEST['id'];

  $squery = "SELECT * FROM `patient` WHERE `pet_id` ='$id'";
  $result = mysqli_query($con, $squery) or die ( mysqli_error($con));
  $row = mysqli_fetch_assoc($result);
  ?>
<table border="0" class="">
<form id="sreg" name="sreg" action="" method="post">
  <tr>
    <td colspan="2" style="padding:5px">
      No Registro:
    <div class="input-group col-md-12 col-xs-12"><input value="<?php echo $row["pet_id"]; ?>" required  name="pid"   type="text" class="form-control" placeholder="Registro de Paciente">
	</div>
    <div id="fner" class="text-center">
    </div>
	</td>
    </tr>

    <tr>
    <td colspan="2" style="padding:5px">
      Nombre Completo Paciente:
    <div class="input-group col-md-12 col-xs-12"><input value="<?php echo $row["pet_fn"]; ?> <?php echo $row["pet_sn"]; ?>" required name="dname" id="lname"   type="text" class="form-control" placeholder="Nombre Doctor">
	</div>
    </td>
  </tr>
  <tr>

  </tr>
  <tr>
    
    <td colspan="2" style="padding:5px"><div class="input-group col-md-12 col-xs-12 ">Edad del Paciente:<input value="<?php echo $row["pet_age"]; ?>" name="age"  required="required"   type="number" class="form-control" placeholder="Edad"></div></td>
    </tr>
<tr>
    <td colspan="2" style="padding:5px"><div class="input-group col-md-12 col-xs-12 ">Globulos Blancos<input name="a"  required="required"   type="number" class="form-control" placeholder="Globulos Blancos"></div></td>
    </tr>
<tr>
    <td colspan="2" style="padding:5px"><div class="input-group col-md-12 col-xs-12 ">Globulos Rojos<input name="b"  required="required"   type="number" class="form-control" placeholder="Globulos Rojos"></div></td>
    </tr>
    <tr>
    <td colspan="2" style="padding:5px"><div class="input-group col-md-12 col-xs-12 ">Plaquetas<input name="c"  required="required"   type="number" class="form-control" placeholder="Plaquetas"></div></td>
    </tr>
<tr>
    <td colspan="2" style="padding:5px"><div class="input-group col-md-12 col-xs-12 ">Trigliceridos<input name="d"  required="required"   type="number" class="form-control" placeholder="Trigliceridos"></div></td>
    </tr>
    <tr>
    <td colspan="2" style="padding:5px"><div class="input-group col-md-12 col-xs-12 ">Potacio<input name="e"  required="required"   type="number" class="form-control" placeholder="Potacio"></div></td>
    </tr>
<tr>
    <td colspan="2" style="padding:5px"><div class="input-group col-md-12 col-xs-12 ">Colesterol<input name="f"  required="required"   type="number" class="form-control" placeholder="Colesterol"></div></td>
    </tr>
    <tr>
    <td colspan="2" style="padding:5px"><div class="input-group col-md-12 col-xs-12 ">Calcio<input name="g"  required="required"   type="number" class="form-control" placeholder="Calcio"></div></td>
    </tr>
  <td colspan="2" style="padding:5px"><div align="center"><button   name="submit" type="submit" class="btn" value="SUBMIT">Enviar</button></div></td>
    </tr>
<tr><td colspan="2" style="padding:5px">
<script type="text/javascript">
document.write('<?php echo $success; ?>');
    </script>
</td>
  </tr>
   </form>
</table>
</div>
</div>
</center>
<div class="panel-footer text-center">Presion el botón de enviar al finalizar guardar los estudios previos </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
<footer>
  <?php include 'footer.php';?>
</footer>
</html>
