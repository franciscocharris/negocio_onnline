<?php
session_start();
//require_once "conexion.php";
//require_once"rutas.php";
if (!isset($_GET['op'])) {
	require_once "vista/plantilla.php";
}else{
	require_once "rutas.php";
}
