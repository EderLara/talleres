<?php
include 'conex.php';
session_start();

# Capturamos el aprendiz para poder validar que exista en la base de datos:
$aprendiz=$_POST['apz'];

$sql = "SELECT * FROM usuarios where iduser = ".$aprendiz."";
$eje=$con->query($sql);
if($eje->num_rows> 0){
	# Si se encuentra el aprendiz, entonces mostramos el resultado de la consulta:
    $row=$eje->fetch_row();
    # Guardamos en variables de sesion los datos del usuario:
    $_SESSION['user'] = $row[0];
    $_SESSION['rol'] = $row[1];
  	
  	switch ($_SESSION['rol']) {
  		case 1:
  			# Si el rol del usuario es expositor, entonces se dirige a la vista de add taller
  			echo '<div class="col-sm-9 alert alert-success"><strong>Bienvenido '.$row[3].'</strong></div> 
  					<div class="col-sm-3">
                        <button name="btnpanelista" class=" btn btn-success" formaction="../vista/talleres.php">Crear Taller</button>
                    </div>';
  			break;
  		case 2:
  			# Si el rol del usuario es aprendiz, entonces se dirige a la vista de inscripcion
  			echo '<div class="col-sm-9 alert alert-success"><strong>Bienvenido '.$row[3].'</strong></div> 
  					<div class="col-sm-3">
                        <button name="btnpanelista" class=" btn btn-success" formaction="../vista/asistentes.php">Inscribirse en taller</button>
                    </div>';
  			break;
  		default:
  			# code...
  			 echo '<div class="col-sm-12 alert alert-danger" role="alert""><strong class="text-center font-weight-bold">El Usuario no se encuentra habilitado para asistir al taller</strong></div>';
  			break;
  	}
?>