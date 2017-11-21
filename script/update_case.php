<?php

require_once("funtions.php");

$id = $_POST["id"];
$estado = $_POST["estado"];

update_casoprueba($estado,$id);

echo '<script type="text/javascript">
self.location = "../listar.html"
</script>';