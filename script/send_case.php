<?php

require_once("funtions.php");

$nombre = $_POST["nombre"];
$descripcion = $_POST["descripcion"];
$requisito = $_POST["requisito"];
$fecha = $_POST["fecha"];
$comentarios = $_POST["comentarios"];
$condiciones = $_POST["condiciones"];
$id_software = $_POST["software"];

guardar_casoprueba($requisito,$nombre,$descripcion,$condiciones,$fecha,$comentarios,1,$id_software);

echo '<script type="text/javascript">
self.location = "../index.html"
</script>';