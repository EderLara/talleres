<?php  

$host="127.0.0.1";
$port=3306;
$socket="";
$user="root";
$password="";
$dbname="talleres";

$con = new mysqli($host, $user, $password, $dbname, $port, $socket)
	or die ('Could not connect to the database server' . mysqli_connect_error());
$acentos = $con->query("SET NAMES 'utf8'");
//$con->close();

?>