<?php

/**
 * User: Danie
 */
function Conectarse() {

    $mysql_host = "localhost";
    $mysql_database = "acceptacion";
    $mysql_user = "root";
    $mysql_password = "";


    $link = mysqli_connect($mysql_host,$mysql_user,$mysql_password,$mysql_database);

    if (!($link))
    {
        echo "Error conectando a la base de datos.";
        exit();
    }


    return $link;
}