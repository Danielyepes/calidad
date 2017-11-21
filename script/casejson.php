<?php

require ("bdfuntion.php");

$link = Conectarse();
$array = array();
$sql = "SELECT * FROM caso_prueba";
$result = mysqli_query($link, $sql) or die(mysqli_error($link));

while ($field = mysqli_fetch_array($result)) {
    $id = $field['id'];
    $nombre =  $field['nombre'];
    $requisito =  $field['requisito'];
    $descripcion = $field['descripcion'];
    $condiciones = $field['condiciones'];
    $fecha = $field['fecha'];
    $comentarios = $field['comentarios'];
    $estado = $field['estado'];
    $id_software = $field['id_software'];
    $array[] = array(
        'id'=> $id,
        'nombre'=> $nombre,
        'requisito'=> $requisito,
        'descripcion'=> $descripcion,
        'fecha'=> $fecha,
        'comentarios'=> $comentarios,
        'estado'=> $estado,
        'id_software'=> $id_software
    );
}

$json_string = json_encode($array, JSON_UNESCAPED_UNICODE);
echo $json_string;
