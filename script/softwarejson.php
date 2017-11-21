<?php

require ("bdfuntion.php");

$link = Conectarse();
$array = array();
$sql = "SELECT * FROM software";
$result = mysqli_query($link, $sql) or die(mysqli_error($link));

while ($field = mysqli_fetch_array($result)) {
    $id = $field['id'];
    $nombre =  $field['nombre'];
    $array[] = array(
        'id'=> $id,
        'nombre'=> $nombre
    );
}

$json_string = json_encode($array, JSON_UNESCAPED_UNICODE);
echo $json_string;
