<?php
include 'conex.php';
session_start();
# Variables de sesion de usuario:
$_SESSION['user'];
$_SESSION['rol'];
$_SESSION['accion'];


switch ($_SESSION['accion']) {
	case 'inscribir':
		# code...
		$sql = "CALL talleres('','','inscribir')";
		$eje = $con->query($sql);
		if ($row = $eje->fetch_row()) {
			# code...
			
		}
		break;
	case 'asistencia':
		# code...
		$sql = "CALL talleres('',0,'asistencia')";
		$eje = $con->query($sql);
		if ($row = $eje->fetch_row()) {
			# code...
			
		}
		break;
	default:
		# code...
		$sql = "CALL talleres('',0,'')";
		$eje = $con->query($sql);
		while ($row = $eje->fetch_row()) {
			# code...
			
		}
		break;
}


?>