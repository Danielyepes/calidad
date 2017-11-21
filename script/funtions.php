<?php
require ("bdfuntion.php");

function id($nombre)
{
    $link = Conectarse();
    $sql = "SELECT * FROM software WHERE nombre ='$nombre'";
    $result = mysqli_query($link, $sql);

    $field = mysqli_fetch_array($result);


    return $field["id"];
}

function guardar_software($nombre)
{
    $link = Conectarse();
    $sql = "INSERT INTO `software`(`nombre`) VALUES ('$nombre')";
    mysqli_query($link, $sql);

}

function update_casoprueba($estado,$id)
{
    $link = Conectarse();
    $sql = "UPDATE `caso_prueba` SET`estado`='$estado'  WHERE `id` = $id";
    mysqli_query($link, $sql);

}

function guardar_casoprueba($requisito,$nombre,$descripcion,$condiciones,$fecha,$comentarios,$estado,$id)
{
    $link = Conectarse();
    $sql = "INSERT INTO `caso_prueba`(`requisito`,`nombre`, `descripcion`, `condiciones`, `fecha`, `comentarios`, `estado`, `id_software`) VALUES ('$requisito','$nombre','$descripcion','$condiciones','$fecha','$comentarios','$estado','$id')";
    mysqli_query($link, $sql);

}


